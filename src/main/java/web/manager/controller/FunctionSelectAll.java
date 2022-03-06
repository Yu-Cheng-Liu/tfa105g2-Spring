package web.manager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import web.manager.entity.FunctionBean;
import web.manager.service.FunctionServiceInterface;

@Controller
public class FunctionSelectAll {
	@Autowired
	private FunctionServiceInterface service;

	@ResponseBody
	@PostMapping(value = "/backstage/FunctionSelectAll.controller")
	public String SelectAll() {
		List<FunctionBean> list = service.selectAll();
		Gson gson = new Gson();
		return gson.toJson(list);
	}
}
