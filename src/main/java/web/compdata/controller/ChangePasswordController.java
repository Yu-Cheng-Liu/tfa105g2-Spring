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
public class ChangePasswordController {
	@Autowired
	private CompDataServiceInterface service;
	
	@RequestMapping(value="/secure/changePass.controller" , method= {RequestMethod.POST , RequestMethod.GET})
	public String changePassword(
								 String oldPass,
								 String newPass,
								 String confirm,
								 Model model,
								 HttpSession session) {
		
		String compAccount = (String) session.getAttribute("compAccount");
		boolean trueOrFalse = service.changePassword(compAccount, oldPass, newPass, confirm);
		Map<String,String> errors = service.getErrors();
		
		if(trueOrFalse == false) {
			model.addAttribute("errors", errors);
			return "/front-end/compData/comp-index.jsp";
		}else {			 
			 model.addAttribute("changePasswordSucceed", "更改密碼成功");
			 return "/front-end/compData/comp-index.jsp";
		}
		
		
		
		
		
		
		
	}

}
