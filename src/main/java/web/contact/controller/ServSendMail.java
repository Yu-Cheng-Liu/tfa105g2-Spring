package web.contact.controller;

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

import web.contact.entity.impl.ServiceBean;
import web.contact.service.ServServiceInterface;

@Controller
public class ServSendMail {

	@Autowired
	private ServServiceInterface service;

	@ResponseBody
	@PostMapping(value = "/backstage/ServSendMail.controller")
	public String ServSelectAll(@RequestBody(required = false) HashMap<String, String> req, HttpSession session) {
		
		ServiceBean bean = new ServiceBean();
		bean.setTaskNo(Integer.valueOf(req.get("taskNo")));
		bean = service.sendEmail(bean, req.get("subject"), req.get("replyContent"));
		Gson gson = new Gson();
		return gson.toJson(bean);
	}
}