package web.tower.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.memberdata.entity.MemberDataVO;
import web.tower.entity.TowerVO;
import web.tower.service.TowerService;

@Controller
public class TowerForUser {
	@Autowired
	private TowerService service;
	
	@RequestMapping(value="/towerforuser.controller", method = {RequestMethod.POST})
	public String towerforuser(Model model ,HttpSession session) {
		MemberDataVO memberDataVO = (MemberDataVO) session.getAttribute("user");
		Integer userNo = memberDataVO.getUserno();
		
		List <TowerVO> vo = service.selectAllByUserNo(userNo);
		
		session.setAttribute("TowerVO", vo);
		
		String showactive = "show active";
		String active = "class=\"active\"";
		
		model.addAttribute("showactive3",showactive);
		model.addAttribute("active3", active);
	
		
		return "/front-end/memberData/my-account-member.jsp";
	}
	
	
}
