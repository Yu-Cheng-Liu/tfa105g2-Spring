package web.memberdata.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
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
import web.tools.SendMail;
import web.tools.impl.AuthCode;

@Controller
public class RegisterServlet {

	@Autowired
	private MemberDataServiceInterface service;

	@RequestMapping(path = { "/register-member.controller" }, method = { RequestMethod.POST })
	public String register(Model model, String action, String useraccount_rg, String password_rg, String password_rg2,
			String username, String phone, String email, String city, String town, String address, String gender,
			String birthday, HttpSession session) {

		String Address = city + town + address;

		Map<String, String> errors = new HashMap<String, String>();
		model.addAttribute("errors", errors);

		String useraccountReg = "^[(a-zA-Z0-9)]{4,15}$";
		if (useraccount_rg == null || useraccount_rg.trim().length() == 0) {
			errors.put("useraccount_rg", "請填寫帳號");
		} else if (!useraccount_rg.trim().matches(useraccountReg)) {
			errors.put("useraccount_rg", "帳號只能是中、英文字母、數字 , 且長度必需在4到15之間");
		} else if (service.selectByUserAccount(useraccount_rg) != null) {
			errors.put("useraccount_rg", "此帳號已註冊");
		}

		String passwordReg = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{6,15}$";
		if (password_rg.trim().length() == 0) {
			errors.put("password_rg", "請填寫密碼");
		} else if (!password_rg.trim().matches(passwordReg)) {
			errors.put("password_rg", "密碼需介於 6-15碼，且至少包含一個字母及數字");
		}

		if ("".equals(password_rg2)) {
			errors.put("password_rg2", "請再次填寫密碼");
		}
		if (!(password_rg2.equals(password_rg))) {
			errors.put("password_rg2", "請確認您的密碼");
		}

		String phoneReg = "^09[0-9]{8}$";
		if (phone == null || phone.trim().length() == 0) {
			errors.put("phone", "請填寫手機");
		} else if (!phone.trim().matches(phoneReg)) {
			errors.put("phone", "手機格式不正確");
		}

		if (email == null || email.trim().length() == 0) {
			errors.put("email", "請填寫電子信箱");
		}

		java.sql.Date birthday1 = null;
		try {
			birthday1 = java.sql.Date.valueOf(birthday.trim());
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		}

		if (errors != null && !errors.isEmpty()) {
			return "/front-end/memberData/login-register-member.jsp";
		} else {
			MemberDataVO bean = new MemberDataVO();
			bean.setUseraccount(useraccount_rg);
			bean.setPassword(password_rg);
			bean.setUsername(username);
			bean.setPhone(phone);
			bean.setEmail(email);
			bean.setAddress(Address);
			bean.setGender(gender);
			bean.setBirthday(birthday1);
			bean.setCreatedate(LocalDate.now());
			bean.setLastupdatedatetime(LocalDateTime.now());
			bean.setVerifystatus("驗證中");

			MemberDataVO result = service.register(bean);

			AuthCode authcode = new AuthCode();
			authcode.setTargetStringLength(6);
			String auth_code = authcode.givenUsingJava8_whenGeneratingRandomAlphanumericString_thenCorrect();

			if (result == null) {
				errors.put("action", "註冊失敗");
			} else {
				model.addAttribute("insert", result);
				session.setAttribute("authcode", auth_code);
				session.setAttribute("useraccount", result.getUseraccount());

				SendMail sendMail = new SendMail(result.getEmail(), "龘虤會員e-mail驗證信",
						"您好:\n\r您已成功註冊龘虤會員,請在頁面上輸入驗證碼 " + auth_code + "," + "\n\r" + "此驗證碼將於30分鐘後失效");
				sendMail.send();

			}
			return "/front-end/memberData/verify-member.jsp";
		}
	}
}
