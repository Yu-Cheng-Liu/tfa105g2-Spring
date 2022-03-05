package web.memberdata.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import web.memberdata.entity.MemberDataVO;
import web.tools.SendMail;
import web.tools.impl.AuthCode;

@Controller
public class VerifyEmailServlet {

	@PostMapping(value = "/verify-email.controller")
	public String verify(Model model, HttpSession session) {

		MemberDataVO member = (MemberDataVO) session.getAttribute("user");
		String email = member.getEmail();

		AuthCode authcode = new AuthCode();
		authcode.setTargetStringLength(6);
		String auth_code = authcode.givenUsingJava8_whenGeneratingRandomAlphanumericString_thenCorrect();
		session.setAttribute("authcode", auth_code);
		
		SendMail sendMail = new SendMail(email, "龘虤會員e-mail驗證信",
				"您好:\n\r請在頁面上輸入驗證碼 " + auth_code + "," + "\n\r" + "此驗證碼將於30分鐘後失效");
		sendMail.send();

		return "/front-end/memberData/verify-member.jsp";

	}
}
