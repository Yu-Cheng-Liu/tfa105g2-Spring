package web.compdata.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import web.compdata.entity.CompData;
import web.compdata.service.CompDataServiceInterface;

@Controller
public class IndexCompLogin {
	
	@Autowired
	private CompDataServiceInterface service;
	
	@GetMapping(value="/secure/loginFromSession.controller")
	public String compData(Model model , HttpSession session , HttpServletRequest req) {
		String compAccountFromSession = (String)session.getAttribute("compAccount");
		System.out.println(compAccountFromSession);
		
		if(compAccountFromSession == null) {
			
			return "/front-end/compData/comp-login-register.jsp";
		
		}else {
			
			String path = req.getContextPath();
			
			CompData sessionCD = service.findCertainAccount(compAccountFromSession);
			
			session.setAttribute("indexHamburger", "<div class=\"single-settings-block\">\r\n"
					+ "                                                <h4 class=\"title\">廠商專區 </h4>\r\n"
					+ "                                                <ul>\r\n"
					+ "                                                    <li><a href="
					+ path
					+ "/front-end/compData/comp-index.jsp>"
					+ "廠商用戶中心</a></li>\r\n"
					+ "                                                    \r\n"
					+ "                                                </ul>\r\n"
					+ "                                            </div>");
			
			String status = service.verifiedOrNot(sessionCD);
			model.addAttribute("status", status);
			session.setAttribute("verify", status);
			session.setAttribute("compName", sessionCD.getCompName());
			session.setAttribute("chargePerson", sessionCD.getChargePerson());
			session.setAttribute("compPhone", sessionCD.getCompPhone());
			session.setAttribute("email", sessionCD.getEmail());
			session.setAttribute("compAccount", sessionCD.getCompAccount());
			session.setAttribute("compNo", sessionCD.getCompNO());
			session.setAttribute("address", sessionCD.getAddress());
			String classes = "show active";
			model.addAttribute("classes1",classes);
			String active = "class=\"active\"";
			model.addAttribute("attrs2", active);
			
			
			return "/front-end/compData/comp-index.jsp";
			
			
			
		}
		
	}

}
