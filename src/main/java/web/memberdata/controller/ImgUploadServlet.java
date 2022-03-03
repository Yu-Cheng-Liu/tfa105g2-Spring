package web.memberdata.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import web.memberdata.entity.MemberDataVO;
import web.memberdata.service.MemberDataServiceInterface;

@Controller
public class ImgUploadServlet {
	@Autowired
	private MemberDataServiceInterface service;

	@PostMapping(path = { "/uploadimg.controller" })
	public String imgupload(Model model, HttpSession session, @RequestParam("photoupload") MultipartFile photo) throws IOException {
		MemberDataVO memberDataVO = (MemberDataVO) session.getAttribute("user");
		String showactive = "show active";
		String active = "class=\"active\"";
		
		if (photo != null) {
			memberDataVO.setPicture(photo.getBytes());
			memberDataVO = service.editPersonalProfile(memberDataVO);
			System.out.println("memberDataVO:"+memberDataVO);
		}
		session.setAttribute("user", memberDataVO);
		model.addAttribute("showactive4",showactive);
		model.addAttribute("active4", active);
		return "/front-end/memberData/my-account-member.jsp";
	}
}
