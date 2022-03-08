package web.compdata.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import web.compdata.entity.CompData;
import web.compdata.service.CompDataServiceInterface;

@Controller
public class VerifyCompAccountController {
	@Autowired
	private CompDataServiceInterface service;
	
	
	@PostMapping(value="/secure/verify.controller")
	public String verfiry( String verify , Model model , HttpSession session) {
		
		
		
		Map<String,String> errors = new HashMap();
		String compAccount = (String) session.getAttribute("compAccount");
		
		
		CompData cd = service.findCertainAccount(compAccount);
		String authentication = (String) session.getAttribute("authCode");
		System.out.println(verify);
		System.out.println(authentication);
		if(verify.equals(authentication)) {
			
			
			
			
			cd.setVerify("1");
			service.editPersonalProfile(cd);
			
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
			
			
			String classes = "show active";
			model.addAttribute("classes1",classes);
			String active = "class=\"active\"";
			model.addAttribute("attrs2", active);
			
			
			return "redirect:/front-end/compData/comp-index.jsp";
			
		}else {
			
			errors.put("WrongToken", "驗證碼錯誤 , 請再試一次");
			model.addAttribute("errors",errors);
			return "/front-end/compData/comp-verify.jsp";
			
		}
	}
}
