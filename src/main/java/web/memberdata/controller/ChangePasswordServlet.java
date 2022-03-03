package web.memberdata.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.memberdata.entity.MemberDataVO;
import web.memberdata.service.MemberDataServiceInterface;

@Controller
public class ChangePasswordServlet {

	@Autowired
	private MemberDataServiceInterface service;

	@RequestMapping(path = { "/change-password.controller" }, method = { RequestMethod.POST })
	public String changepwd(Model model, String action, String currentpwd, String newpwd, String confirmpwd,
			HttpSession session) {

		MemberDataVO memberDataVO = (MemberDataVO) session.getAttribute("user");
		String useraccount = memberDataVO.getUseraccount();

		Map<String, String> errors = new HashMap<String, String>();
		model.addAttribute("errors", errors);

		String passwordReg = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{6,15}$";
		if (newpwd.trim().length() == 0) {
			errors.put("newpwd", "請填寫密碼");
		} else if (!newpwd.trim().matches(passwordReg)) {
			errors.put("newpwd", "密碼需介於 6-15碼，且至少包含一個字母及數字");
		}

		
		if ("".equals(confirmpwd)) {
			errors.put("confirmpwd", "請再次填寫密碼");
		}
		if (!(confirmpwd.equals(newpwd))) {
			errors.put("confirmpwd", "請確認您的密碼");
		}

		String showactive = "show active";
		String active = "class=\"active\"";
		if (errors != null && !errors.isEmpty()) {
			model.addAttribute("showactive4",showactive);
			model.addAttribute("active4", active);
			return "/front-end/memberData/my-account-member.jsp";
		}

//		if ("changepwd".equals(action)) {
		memberDataVO = service.changePassword(useraccount, currentpwd, newpwd);

		if (memberDataVO == null) {
			errors.put("action", "請確認您的帳號密碼");
		} else {
			model.addAttribute("change", memberDataVO);
			session.setAttribute("user", memberDataVO);
		}
			
		model.addAttribute("showactive4",showactive);
		model.addAttribute("active4", active);
		return "/front-end/memberData/my-account-member.jsp";
//		}
	}

}
