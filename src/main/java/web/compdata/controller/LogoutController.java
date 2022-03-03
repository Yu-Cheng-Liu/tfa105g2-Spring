package web.compdata.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LogoutController {
	@PostMapping("/secure/logout.controller")
	public String logout(String logout, Model model , HttpSession session) {
		
		return "/front-end/index.jsp";
		
	}

}
