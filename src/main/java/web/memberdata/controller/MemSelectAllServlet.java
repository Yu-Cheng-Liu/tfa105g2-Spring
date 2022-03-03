package web.memberdata.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import web.memberdata.entity.MemberDataVO;
import web.memberdata.service.MemberDataServiceInterface;

@Controller
public class MemSelectAllServlet {
	@Autowired
	private MemberDataServiceInterface service;

	@ResponseBody
	@PostMapping(value = "/backstage/MemberAllData.controller")
	public String MemSelectAll() {
		System.out.println(1);
		List<MemberDataVO> list = service.findAll();
		Gson gson = new Gson();

		return gson.toJson(list);
	}

}
