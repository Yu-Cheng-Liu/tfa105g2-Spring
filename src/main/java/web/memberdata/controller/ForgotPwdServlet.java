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
import web.tools.SendMail;
import web.tools.impl.AuthCode;

@Controller
public class ForgotPwdServlet {

	@Autowired
	private MemberDataServiceInterface service;

	@PostMapping(value = "/forgot-pwd.controller")
	public String forgetpwd(String verify, Model model, String email, HttpSession session) {

		MemberDataVO member = service.selectByEmail(email);
		System.out.println(member);

		Map<String, String> errors = new HashMap<String, String>();
		model.addAttribute("errors", errors);

		if (member != null) {
			AuthCode authcode = new AuthCode();
			authcode.setTargetStringLength(7);
			String temporarypwd = authcode.givenUsingJava8_whenGeneratingRandomAlphanumericString_thenCorrect();

			MemberDataVO tempwdmember = service.changePasswordBySystem(member.getUseraccount(),temporarypwd);
			
			System.out.println("tempwdmember:"+tempwdmember);

			SendMail sendMail = new SendMail(email, "[龘虤]會員忘記密碼通知信",
					"親愛的會員您好:\n\r您的帳號:" + tempwdmember.getUseraccount() + "申請忘記密碼通知，" + "系統發送新密碼為" + temporarypwd + ",\n\r"
							+ "請使用新密碼登入，並至會員中心重新修改密碼。\n\r\n\r\n\r龘虤會員中心 敬上");
			sendMail.send();

			return "/front-end/memberData/send-newpwd-member.jsp";

		} else {
			errors.put("nonexistent", "請確認您的email");
			return "/front-end/memberData/forgot-pwd.jsp";
		}

	}

}
