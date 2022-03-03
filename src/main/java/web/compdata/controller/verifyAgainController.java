package web.compdata.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import web.compdata.service.CompDataServiceInterface;
import web.tools.SendMail;
import web.tools.impl.AuthCode;

@Controller
public class verifyAgainController {
	
	@Autowired
	private CompDataServiceInterface service;
	
	@PostMapping("/secure/verifyAgain.controller")
	public String verifyAgain( Model model , HttpSession session) {
		
		String email = (String)session.getAttribute("email");
		String chargePerson = (String)session.getAttribute("chargePerson");
		
		AuthCode authCode = new AuthCode();
		authCode.setTargetStringLength(6);
		String AuthCode = authCode.givenUsingJava8_whenGeneratingRandomAlphanumericString_thenCorrect();
		

		SendMail sendMail = new SendMail(email,"安安 "+ chargePerson +" 你好","請在頁面上輸入驗證碼 " + AuthCode + "\n\r" + "此驗證碼將於30分鐘後失效" );
		System.out.println(email);
		sendMail.send();
		return "/front-end/compData/comp-verify.jsp";
	}

}
