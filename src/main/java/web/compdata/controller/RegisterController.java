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
import web.tools.SendMail;
import web.tools.impl.AuthCode;

@Controller
public class RegisterController {
	@Autowired
	private CompDataServiceInterface service;
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	
	@RequestMapping(value="/secure/register.controller" , method= {RequestMethod.POST})
	public String register(String compAccount, 
						String compName, 
						String email, 
						String chargePerson, 
						String compPhone ,
						String password , 
						String confirmPassword ,
						String city,
						String town,
						String address,
						Model model ,
						HttpSession session) {
		
		String Address = city+town+address;
		
		CompData attrs  = new CompData();
		attrs.setAddress(Address);
		attrs.setChargePerson(chargePerson);
		attrs.setCompAccount(compAccount);
		attrs.setCompName(compName);
		attrs.setCompPhone(compPhone);
		attrs.setEmail(email);
		attrs.setPassword(passwordEncoder.encode(password));
		attrs.setVerify("0");
		
		CompData cd = service.Register(attrs);
		Map<String , String > errors = service.getErrors();
		AuthCode authCode = new AuthCode();
		authCode.setTargetStringLength(6);
		String AuthCode = authCode.givenUsingJava8_whenGeneratingRandomAlphanumericString_thenCorrect();
		
		if(cd==null) {
			System.out.println(cd);
			System.out.println(errors);
			model.addAttribute("errors",errors);
			model.addAttribute("RcompAccount",compAccount);
			model.addAttribute("RcompName",compName);
			model.addAttribute("Remail",email);
			model.addAttribute("RchargePerson",chargePerson);
			model.addAttribute("RcompPhone",compPhone);
			model.addAttribute("Raddress",address);
			return "/front-end/compData/comp-login-register.jsp";
		}else {
			session.setAttribute("RegisterSucceed", "註冊成功");
			session.setAttribute("compName",  cd.getCompName());
			session.setAttribute("chargePerson", cd.getChargePerson());
			session.setAttribute("email", cd.getEmail());
			session.setAttribute("compPhone", cd.getCompPhone());
			session.setAttribute("compAccount", cd.getCompAccount());
			session.setAttribute("address", cd.getAddress());
			session.setAttribute("authCode", AuthCode);
			session.setAttribute("password", cd.getPassword());
		
			
			SendMail sendMail = new SendMail(cd.getEmail(),"安安 "+cd.getCompName()+" 你好","請在頁面上輸入驗證碼 " + AuthCode + "\n\r" + "此驗證碼將於30分鐘後失效" );
			sendMail.send();
			
			return "/front-end/compData/comp-verify.jsp";
		}
	}
}
