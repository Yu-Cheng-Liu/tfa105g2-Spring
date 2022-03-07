package web.memberdata.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.memberdata.entity.MemberDataVO;
import web.memberdata.service.MemberDataServiceInterface;

@Controller
public class EditProfileServlet {
	@Autowired
	private MemberDataServiceInterface service;

	@RequestMapping(path = { "/edit.controller" }, method = { RequestMethod.POST })
	public String edit(Model model, String action, String username, String phone, String email, String address,
			String gender, String birthday, HttpSession session) {

		MemberDataVO memberDataVO = (MemberDataVO) session.getAttribute("user");

//		String picture = req.getParameter("picture");

		Map<String, String> errors = new HashMap<String, String>();
		model.addAttribute("errors", errors);

		String phoneReg = "^09[0-9]{8}$";
		if (phone == null || phone.trim().length() == 0) {
			errors.put("phone", "請確認您的電話號碼");
		} else if (!phone.trim().matches(phoneReg)) {
			errors.put("phone", "手機格式不正確");
		}

		if (email == null || email.trim().length() == 0) {
			errors.put("email", "請確認您的電子信箱");
		} else if (service.selectByEmail(email) != null) {
			errors.put("email", "此email已註冊");
		}

		java.sql.Date birthday1 = null;
		try {
			birthday1 = java.sql.Date.valueOf(birthday.trim());
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		}
		String showactive = "show active";
		String active = "class=\"active\"";
//		if ("edit".equals(action)) {
		memberDataVO.setUsername(username);
		memberDataVO.setPhone(phone);
		memberDataVO.setEmail(email);
		memberDataVO.setAddress(address);
		memberDataVO.setGender(gender);
		memberDataVO.setBirthday(birthday1);
//			memberDataVO.setPicture(picture);
		if (errors != null && !errors.isEmpty()) {
			model.addAttribute("showactive4",showactive);
			model.addAttribute("active4", active);
			return "/front-end/memberData/my-account-member.jsp";
		}

		memberDataVO = service.editPersonalProfile(memberDataVO);

		if (memberDataVO == null) {
			errors.put("action", "資料更新失敗");
		} else {
			model.addAttribute("edit", memberDataVO);
			session.setAttribute("user", memberDataVO);
		}
		
		model.addAttribute("showactive4",showactive);
		model.addAttribute("active4", active);
		return "/front-end/memberData/my-account-member.jsp";
//		}

	}
}
