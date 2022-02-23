package web.contact.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.contact.entity.impl.ServiceBean;
import web.contact.service.ServServiceInterface;

@Controller
public class ServInsertController {
	@Autowired
	private ServServiceInterface service;

	@RequestMapping(value = "/contact.controller", method = { RequestMethod.POST })
	public String ServiceInsert(String customerName, String email, String content, Model model, HttpSession session) {
		System.out.println(customerName);
		System.out.println(email);
		System.out.println(content);
		System.out.println("\n=====================================");
		ServiceBean bean = new ServiceBean();
		bean.setCustomerName(customerName);
		bean.setEmail(email);
		bean.setCustomerContent(content);
		bean = service.insert(bean);
		Map<String, String> errors = service.getErrors();
		model.addAttribute("erroes", errors);
		System.out.println(errors);
		System.out.println("\n=====================================");
		if (errors.size() != 0) {
			System.out.println("1");
			model.addAttribute("errors", errors);
			model.addAttribute("customerName", customerName);
			model.addAttribute("email", email);
			model.addAttribute("content", content);
			return "/contact.jsp";
		} else {
			System.out.println("2");
			session.setAttribute("result", true);
			return "redirect:/contact.jsp";
		}

	}
}