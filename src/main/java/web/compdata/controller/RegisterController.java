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

@Controller
public class RegisterController {
	@Autowired
	private CompDataServiceInterface service;
	
	
	@RequestMapping(value="/secure/register.controller" , method= {RequestMethod.POST})
	public String register(String compAccount, 
						String compName, 
						String email, 
						String chargePerson, 
						String compPhone ,
						String password , 
						String confirmPassword ,
						String address,
						Model model ,
						HttpSession session) {
		
		System.out.println(compAccount);
		System.out.println(compName);
		System.out.println(chargePerson);
		System.out.println(compPhone);
		System.out.println(password);
		System.out.println(confirmPassword);
		System.out.println(address);
		
		
		CompData attrs  = new CompData();
		attrs.setAddress(address);
		attrs.setChargePerson(chargePerson);
		attrs.setCompAccount(compAccount);
		attrs.setCompName(compName);
		attrs.setCompPhone(compPhone);
		attrs.setEmail(email);
		attrs.setPassword(password);
		
		
		CompData cd = service.Register(attrs);
		Map<String , String > errors = service.getErrors();
		
		if(cd==null) {
			System.out.println(cd);
			System.out.println(errors);
			model.addAttribute("errors",errors);
			model.addAttribute("compAccount",compAccount);
			model.addAttribute("compName",compName);
			model.addAttribute("email",email);
			model.addAttribute("chargePerson",chargePerson);
			model.addAttribute("compPhone",compPhone);
			model.addAttribute("address",address);
			return "/front-end/compData/register-failed.jsp";
		}else {
			session.setAttribute("RegisterSucceed", "註冊成功");
			session.setAttribute("compName",  cd.getCompName());
			session.setAttribute("chargePerson", cd.getChargePerson());
			session.setAttribute("email", cd.getEmail());
			session.setAttribute("compPhone", cd.getCompPhone());
			session.setAttribute("compAccount", cd.getCompAccount());
			session.setAttribute("address", address);
			
			SendMail sendMail = new SendMail(cd.getEmail(),"安安你好","請在頁面上輸入驗證碼");
			
			
			return "redirect:/front-end/compData/comp-index.jsp";
		}
	}
}
