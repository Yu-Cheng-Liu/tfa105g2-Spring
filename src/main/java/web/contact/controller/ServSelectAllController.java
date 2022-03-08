package web.contact.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import web.contact.entity.impl.ServiceBean;
import web.contact.service.ServServiceInterface;

@Controller
public class ServSelectAllController {

	@Autowired
	private ServServiceInterface service;
	
	@ResponseBody
	@PostMapping(value = "/backstage/ServiceAllData.controller")
	public String ServSelectAll() {
		System.out.println(1);
		List<ServiceBean> list = service.select();
		Gson gson = new Gson();

		return gson.toJson(list);
	}
	
//	@PostMapping(value = "/ServiceAllData.do")
//	public String ServSelectll(@RequestBody(required = false) ServiceBean bean, HttpSession session) {
//		System.out.println(1);
//		List<ServiceBean> list = service.select();
//		Gson gson = new Gson();
//
//		return gson.toJson(list);
//	
//}
}
