package web.compdata.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.compdata.entity.CompData;
import web.compdata.service.CompDataServiceInterface;

@Controller
public class LoginController {
	@Autowired
	private CompDataServiceInterface service;
	@Autowired
	private PasswordEncoder passwordEncoder;

	@RequestMapping(value="/secure/login.controller" , method= {RequestMethod.POST})
	public String compData(String rememberMe ,String compAccount, String password, Model model, HttpSession session) {
		
		
		CompData cd = service.login(compAccount, password);
		Map<String, String> errors = service.getErrors();	
		System.out.println(cd);
	
		
		if (cd==null) {
				model.addAttribute("errors", errors);
				model.addAttribute("username", compAccount);
				model.addAttribute("password", password);
				System.out.println(errors);
			return "/front-end/compData/comp-login-register.jsp";
		}

		else {
				
				
				String status = service.verifiedOrNot(cd);
				model.addAttribute("status", status);
				session.setAttribute("verify", status);
				session.setAttribute("compName", cd.getCompName());
				session.setAttribute("chargePerson", cd.getChargePerson());
				session.setAttribute("compPhone", cd.getCompPhone());
				session.setAttribute("email", cd.getEmail());
				session.setAttribute("compAccount", cd.getCompAccount());
				session.setAttribute("compNo", cd.getCompNO());
				session.setAttribute("address", cd.getAddress());
				String classes = "show active";
				model.addAttribute("classes1",classes);
				String active = "class=\"active\"";
				model.addAttribute("attrs2", active);
				session.setAttribute("type", "comp");
				return "/front-end/compData/comp-index.jsp";
			
		}

	}

}
