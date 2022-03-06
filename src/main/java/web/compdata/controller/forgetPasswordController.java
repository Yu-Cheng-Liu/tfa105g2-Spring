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
import web.tools.SendMail;
import web.tools.impl.AuthCode;

@Controller
public class forgetPasswordController {
	@Autowired
	private CompDataServiceInterface service;
	
	
	
	@RequestMapping(value="/secure/forgetPassword.controller" , method= {RequestMethod.POST})
	public String reSendPassword(String email , Model model , HttpSession session) {
		
		CompData cd = service.findCertainEmail(email);
		System.out.println(cd);
		
		Map<String,String>errors = service.getErrors();
		
		if(cd!=null) {
			AuthCode ac = new AuthCode() ;
			ac.setTargetStringLength(8);
			String newPass = ac.givenUsingJava8_whenGeneratingRandomAlphanumericString_thenCorrect();
			boolean trueOrFalse = service.changePasswordByAuthCode(cd.getCompAccount(), cd.getPassword(), newPass, newPass);
			
			System.out.println(trueOrFalse);
			System.out.println(errors);
			
			SendMail sendMail = new SendMail(cd.getEmail(),"安安 "+cd.getCompName()+" 你好","請回到登入頁面以新密碼登入 " + "\r\n" + "您的新密碼為 " + newPass + "\n\r" );
			sendMail.send();
			
			return "/front-end/compData/comp-login-register.jsp";
			
		}else {
			
			model.addAttribute("errors",errors);
			return"/front-end/compData/forgetPassword.jsp";
		}
		
		
		
		
	}
	
	
		
}
