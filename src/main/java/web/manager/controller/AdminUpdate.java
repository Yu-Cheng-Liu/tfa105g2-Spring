package web.manager.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import web.manager.entity.AdminBean;
import web.manager.service.AdminServiceInterface;

@Controller
public class AdminUpdate {
	@Autowired
	private AdminServiceInterface service;
	
	@ResponseBody
	@PostMapping(value = "/backstage/AdminUpdate.controller")
	public String Update(@RequestBody(required = false) AdminBean bean,  HttpSession session) {
		bean = service.update(bean);
		Gson gson = new Gson();
		return gson.toJson(bean);
	}
}
