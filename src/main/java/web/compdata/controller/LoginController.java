package web.compdata.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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
	public String compData(String rememberMe ,String compAccount, String password, Model model, HttpSession session , HttpServletRequest req) {
		 
		
		CompData cd = service.login(compAccount, password);
		Map<String, String> errors = service.getErrors();	
		System.out.println(cd);
		System.out.println(rememberMe);
		
		
		
		if (cd==null) {
				model.addAttribute("errors", errors);
				model.addAttribute("username", compAccount);
				model.addAttribute("password", password);
				System.out.println(errors);
			return "/front-end/compData/comp-login-register.jsp";
		}

		else {
			
			String path = req.getContextPath();
				
			
			session.setAttribute("indexHamburger", "<div class=\"single-settings-block\">\r\n"
					+ "                                                <h4 class=\"title\">廠商專區 </h4>\r\n"
					+ "                                                <ul>\r\n"
					+ "                                                    <li><a href="
					+ path
					+ "/front-end/compData/comp-index.jsp>廠商用戶中心</a></li>\r\n"
					+ "                                                    \r\n"
					+ "                                                </ul>\r\n"
					+ "                                            </div>");
				
			
				String status = service.verifiedOrNot(cd);
				session.setAttribute("status", status);
				session.setAttribute("verify", cd.getVerify());
				session.setAttribute("compName", cd.getCompName());
				session.setAttribute("chargePerson", cd.getChargePerson());
				session.setAttribute("compPhone", cd.getCompPhone());
				session.setAttribute("email", cd.getEmail());
				session.setAttribute("compAccount", cd.getCompAccount());
				session.setAttribute("compNo", cd.getCompNO());
				session.setAttribute("compAddress", cd.getAddress());
				session.setMaxInactiveInterval(86400);
				String classes = "show active";
				model.addAttribute("classes1",classes);
				String active = "class=\"active\"";
				model.addAttribute("attrs2", active);
				
				if("on".equals(rememberMe)) {
					session.setMaxInactiveInterval(0);
				}
				
				return "/front-end/compData/comp-index.jsp";
				
				
			
			}
		

	}

}
