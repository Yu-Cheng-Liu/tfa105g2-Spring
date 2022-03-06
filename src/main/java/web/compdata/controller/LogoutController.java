package web.compdata.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LogoutController {
	@PostMapping("/secure/logout.controller")
	public String logout( Model model , HttpSession session) {
		
		
		session.removeAttribute("verify");
		session.removeAttribute("compName");
		session.removeAttribute("chargePerson");
		session.removeAttribute("compPhone");
		session.removeAttribute("email");
		session.removeAttribute("compAccount");
		session.removeAttribute("compNo");
		session.removeAttribute("address");
		
		
		return "redirect:/front-end/index.jsp";
		
	}

}
