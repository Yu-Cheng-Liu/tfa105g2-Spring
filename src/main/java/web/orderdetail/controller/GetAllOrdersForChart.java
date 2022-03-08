package web.orderdetail.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import web.orderdetail.entity.OrderDetail;
import web.orderdetail.service.OrderDetailServiceInterface;

@Controller
public class GetAllOrdersForChart {
	
	@Autowired
	private OrderDetailServiceInterface service;
	
	
	@ResponseBody
	@PostMapping(value = "/secure/orderDetailSelectAll.controller")
	public String orderDetailSelectAll(HttpSession session) {
		Integer compNo = (Integer)session.getAttribute("compNo");
		Gson gson = new Gson();
		List<OrderDetail> list = service.selectWithCompNo(compNo);
		System.out.println(list);
		return gson.toJson(list);
				
	}
	
	
	

}
