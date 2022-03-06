package web.manager.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import web.manager.entity.FunctionBean;
import web.manager.service.FunctionServiceInterface;

@Controller
public class FunctionDelete {
	@Autowired
	private FunctionServiceInterface service;

	@ResponseBody
	@PostMapping(value = "/backstage/FunctionDelete.controller")
	public String Delete(@RequestBody(required = false) List<Object> list, HttpSession session) {
		boolean result = false;
		FunctionBean bean = new FunctionBean();
		for (int i = 0; i < list.size(); i++) {
			JSONObject obj = new JSONObject((String)list.get(i));
			bean.setFunctionName(obj.getString("functionName"));
			bean.setFunctionNo(Integer.valueOf(obj.getString("functionNo")));
			result = service.delete(bean);
		}
		Map<String, Boolean> listRes = new HashMap<String, Boolean>();
		listRes.put("result", result);
		Gson gson = new Gson();
		return gson.toJson(listRes);
	}
}
