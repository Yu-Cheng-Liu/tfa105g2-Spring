package web.manager.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import web.manager.entity.RightBean;
import web.manager.service.RightServiceInterface;

@Controller
public class RightSelect {
	@Autowired
	private RightServiceInterface service;

	@ResponseBody
	@PostMapping(value = "/backstage/AdminRightSelect.controller")
	public String AdminRight(@RequestBody(required = false) RightBean bean, HttpSession session) {
		List<RightBean> list = service.selectAdminAll(bean);
		Gson gson = new Gson();
		return gson.toJson(list);
	}
}
