package web.manager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import web.manager.entity.AdminBean;
import web.manager.service.AdminServiceInterface;

@Controller
public class AdminSelectAll {

	@Autowired
	private AdminServiceInterface service;
	
	@ResponseBody
	@PostMapping(value = "/backstage/AdminSelectAll.controller")
	public String SelectAll() {
		List<AdminBean> list = service.selectAll();
		Gson gson = new Gson();
		return gson.toJson(list);
	}
}
