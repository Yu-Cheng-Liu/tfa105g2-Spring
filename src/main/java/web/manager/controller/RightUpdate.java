package web.manager.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
public class RightUpdate {
	@Autowired
	private RightServiceInterface service;

	@ResponseBody
	@PostMapping(value = "/backstage/RightUpdate.controller")
	public String AdminRight(@RequestBody(required = false) List<String> list, HttpSession session) {
		boolean result = false;
		Integer count = 0;
		RightBean bean = new RightBean();
		bean.setAdminNo(Integer.valueOf(list.get(0)));
		System.out.println(1);
		result = service.delete(bean);
		System.out.println(2);
		for (int i = 1; i <= list.size() - 1; i++) {
			bean.setFunctionNo(Integer.valueOf(list.get(i)));
			bean = service.insert(bean);
			count++;
		}
		System.out.println(3);
		if (count == list.size() - 1) {
			result = true;
		} else {
			result = false;
		}
		Map<String, Boolean> listRes = new HashMap<String, Boolean>();
		listRes.put("result", result);
		Gson gson = new Gson();
		return gson.toJson(listRes);
	}

}
