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
public class EditPersonalDataController {
	
	@Autowired
	private CompDataServiceInterface service;
	@RequestMapping(value="/secure/editProfile.controller",method = {RequestMethod.POST})
	public String update(String compName,
						 String chargePerson,
						 String email,
						 String compPhone,
						 String address,
						 Model  model,
						 HttpSession session 
						 ) {
		
		String compAccount = (String)session.getAttribute("compAccount");
//		System.out.println(compAccount);
		String password    = (String)session.getAttribute("password");
//		System.out.println(password);
		
		
		CompData attrs = new CompData();
		attrs.setCompAccount(compAccount);
		attrs.setCompName(compName);
		attrs.setChargePerson(chargePerson);
		attrs.setAddress(address);
		attrs.setEmail(email);
		attrs.setCompPhone(compPhone);
		attrs.setPassword(password);
		
		System.out.println(attrs);
		boolean succeedOrNot = service.editPersonalProfile(attrs);
		Map<String,String> errors = service.getErrors();
		
		if(succeedOrNot == false) {
			
			model.addAttribute("CompName",compName);
			model.addAttribute("ChargePerson",chargePerson);
			model.addAttribute("email",email);
			model.addAttribute("CompPhone" , compPhone);
			model.addAttribute("Address" , address);
			model.addAttribute("errors",errors);
			
			return "/front-end/compData/comp-index.jsp";
		}else {
			model.addAttribute("EditPersonalProfileSucceed", "編輯帳戶資料成功");
			return "/front-end/compData/comp-index.jsp";
		}
		
	
		
	}
	
	
	
	

}
