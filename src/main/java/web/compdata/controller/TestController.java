package web.compdata.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.compdata.entity.CompData;
import web.compdata.service.CompDataServiceInterface;

@Controller
public class TestController {
	@Autowired
	private CompDataServiceInterface service;

	@RequestMapping(value="/secure/login.controller" , method= {RequestMethod.POST})
	public String compData(String compAccount, String password, Model model, HttpSession session) {

		Map<String, String> errors = service.getErrors();	

		CompData cd = service.login(compAccount, password);
		model.addAttribute("errors", errors);
		
		if (errors.size() != 0) {
				model.addAttribute("errors", errors);
				model.addAttribute("username", compAccount);
				model.addAttribute("password", password);
			return "/login-failed.jsp";
		}

		else {
			session.setAttribute("CompName", cd.getCompName());
			session.setAttribute("ChargePerson", cd.getChargePerson());
			session.setAttribute("CompPhone", cd.getCompPhone());
			session.setAttribute("email", cd.getEmail());
			session.setAttribute("compAccount", cd.getCompAccount());
			session.setAttribute("password", cd.getPassword());
			session.setAttribute("compNo", cd.getCompNO());
			session.setAttribute("Address", cd.getAddress());

			return "redirect:/comp-login-register.jsp";
		}

	}

}
