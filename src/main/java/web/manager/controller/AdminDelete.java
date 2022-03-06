package web.manager.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import web.manager.entity.AdminBean;
import web.manager.entity.RightBean;
import web.manager.service.AdminServiceInterface;
import web.manager.service.RightServiceInterface;

@Controller
public class AdminDelete {
	@Autowired
	private AdminServiceInterface adminService;
	@Autowired
	private RightServiceInterface rightService;

	@ResponseBody
	@PostMapping(value = "/backstage/AdminDelete.controller")
	public String Delete(@RequestBody(required = false) AdminBean bean, HttpSession session) {
		RightBean rBean = new RightBean();
		rBean.setAdminNo(bean.getAdminNo());
		boolean result = rightService.delete(rBean);
		if (result) {
			result = adminService.delete(bean);
		}
		System.out.println(result);
		Map<String, Boolean> list = new HashMap<String, Boolean>();
		list.put("result", result);
		Gson gson = new Gson();

		return gson.toJson(list);
	}
}
