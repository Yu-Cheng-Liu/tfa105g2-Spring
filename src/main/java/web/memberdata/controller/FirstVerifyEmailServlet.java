package web.memberdata.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import web.memberdata.entity.MemberDataVO;
import web.memberdata.service.MemberDataServiceInterface;

@Controller
public class FirstVerifyEmailServlet {

	@Autowired
	private MemberDataServiceInterface service;

	@PostMapping(value = "/first-verify-email.controller")
	public String verify(String verify, Model model, HttpSession session) {

		Map<String, String> errors = new HashMap<String, String>();
		model.addAttribute("errors", errors);

		if (session.getAttribute("user") == null) {
			String useraccount = (String) session.getAttribute("useraccount");
			MemberDataVO member = service.selectByUserAccount(useraccount);
			String authcode = (String) session.getAttribute("authcode");

			if (verify.equals(authcode)) {
				member.setVerifystatus("已驗證");
				service.editPersonalProfile(member);
				return "/front-end/memberData/verify-sucess-member.jsp";
			} else {
				errors.put("inputerror", "輸入錯誤,請再試一次");
				return "/front-end/memberData/verify-member.jsp";
			}

		} else {

			MemberDataVO member = (MemberDataVO) session.getAttribute("user");
			String authcode = (String) session.getAttribute("authcode");

			if (verify.equals(authcode)) {
				member.setVerifystatus("已驗證");
				service.editPersonalProfile(member);
				return "/front-end/memberData/verify-sucess-member.jsp";
			} else {
				errors.put("inputerror", "輸入錯誤,請再試一次");
				return "/front-end/memberData/verify-member.jsp";
			}
		}
	}

}
