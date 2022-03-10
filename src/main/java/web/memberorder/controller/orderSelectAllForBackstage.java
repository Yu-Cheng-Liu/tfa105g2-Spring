package web.memberorder.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import web.memberorder.entity.MemberOrderVO;
import web.memberorder.service.MemberOrderServiceInterface;

@Controller
public class orderSelectAllForBackstage {
	
	@Autowired
	private MemberOrderServiceInterface memberOrderServiceInterface;
	public String format(LocalDateTime od) {
		// Custom format if needed
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

		// Format LocalDateTime
		String formattedDateTime = od.format(formatter);
		return formattedDateTime;
	}
	
	@ResponseBody
	@PostMapping(value = "/backstage/orderSelectAll.controller")
	public String orderSelectAll() {
		
		Gson gson = new Gson();
		List<MemberOrderVO> list = memberOrderServiceInterface.selectAll();
		System.out.println(list.get(0).getOrderDate());
		for(int i = 0; i < list.size(); i++) {
			LocalDateTime od = list.get(i).getOrderDate();
			String dateString = format(od);
			list.get(i).setDateString(dateString);
			
		}
		return gson.toJson(list);
		
	}
}
