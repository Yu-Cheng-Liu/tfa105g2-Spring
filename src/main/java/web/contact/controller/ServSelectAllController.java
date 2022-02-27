package web.contact.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import web.contact.entity.impl.ServiceBean;
import web.contact.service.ServServiceInterface;

@Controller
public class ServSelectAllController {

<<<<<<< HEAD
		@Autowired
		private ServServiceInterface service;
		
		@PostMapping(value = "/Back-End/ServiceAllData.do")
		public @ResponseBody HttpSession ServSelectAll (Model model, HttpSession session) {
			System.out.println(1);
			List<ServiceBean> list = service.select();
			Map<String, String> errors = service.getErrors();
			if (errors.size() != 0) {
				session.setAttribute("successful", false);
				session.setAttribute("result", null);
				session.setAttribute("errors", errors);
				return session;
			} else {
				session.setAttribute("successful", true);
				session.setAttribute("result", list);
				session.setAttribute("errors", null);
				return session;
			}
		}
=======
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
>>>>>>> Dora
}
