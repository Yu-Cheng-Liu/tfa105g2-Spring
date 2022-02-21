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
	public String update(String editCompName,
						 String editChargePerson,
						 String editEmail,
						 String editCompPhone,
						 String editAddress,
						 Model  model,
						 HttpSession session 
						 ) {
		
		String compAccount = (String)session.getAttribute("compAccount");
		System.out.println(compAccount);
		String password    = (String)session.getAttribute("password");
		System.out.println(password);
		
		
		CompData attrs = new CompData();
		attrs.setCompAccount(compAccount);
		attrs.setCompName(editCompName);
		attrs.setChargePerson(editChargePerson);
		attrs.setAddress(editAddress);
		attrs.setEmail(editEmail);
		attrs.setCompPhone(editCompPhone);
		attrs.setPassword(password);
		
		
		boolean succeedOrNot = service.editPersonalProfile(attrs);
		Map<String,String> errors = service.getErrors();
		
		if(succeedOrNot == false) {
			
			model.addAttribute("CompName",editCompName);
			model.addAttribute("ChargePerson",editChargePerson);
			model.addAttribute("email",editEmail);
			model.addAttribute("CompPhone" , editCompPhone);
			model.addAttribute("Address" , editAddress);
			model.addAttribute("errors",errors);
			
			return "/front-end/compData/EditFailed.jsp";
		}else {
			session.setAttribute("EditPersonalProfileSucceed", "編輯帳戶資料成功");
			return "redirect:/front-end/compData/EditSucceed.jsp";
		}
		
	
		
	}
	
	
	
	

}
