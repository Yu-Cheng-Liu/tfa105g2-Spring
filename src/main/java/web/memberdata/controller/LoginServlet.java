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
public class LoginServlet {

	@Autowired
	private MemberDataServiceInterface service;

	@RequestMapping(path = { "/login-register-member.controller" }, method= {RequestMethod.POST})
	public String login(Model model, String useraccount, String password, String action, HttpSession session) {

//		if ("login".equals(action)) {

			Map<String, String> errors = new HashMap<String, String>();
			model.addAttribute("errors", errors);
			
			if (useraccount == null || (useraccount.trim()).length() == 0) {
				errors.put("useraccount", "請輸入帳號");
			}

			if (password == null || password.length() == 0) {
				errors.put("password", "請輸入密碼");
			}

			if (errors != null && !errors.isEmpty()) {
				return "/front-end/memberData/login-register-member.jsp";
			}

			MemberDataVO memberDataVO = service.login(useraccount, password);

			if (memberDataVO == null) {
				errors.put("password", "登入失敗, 請再試一次");
				return "/front-end/memberData/login-register-member.jsp";
			} else {
				session.setAttribute("user", memberDataVO);

				try {
					String location = (String)session.getAttribute("location");
					if(location!=null) {
						session.removeAttribute("location");
						return "redirect:"+location;  //還要確認
					}
				}catch(Exception ignored){ }

				return "redirect:/front-end/index.jsp";
			}

//		}
	}
}
