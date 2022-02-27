package web.memberdata.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class LogoutServlet {

	@RequestMapping(path = {"/logout-member.controller"}, method= {RequestMethod.POST})
	public String logout(String action, HttpSession session) {
			
//		if ("logout".equals(action)) {
			session.removeAttribute("user");
			return "/front-end/index.jsp";
//		}
	}

}
