package web.memberorder.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.memberdata.entity.MemberDataVO;
import web.memberorder.entity.OrderViewVO;
import web.orderdetail.service.OrderDetailServiceInterface;

@Controller
public class GetMemberOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	@Autowired
	OrderDetailServiceInterface detailservice;
	
	@RequestMapping(value = "/front-end/memberorder/GetMemberOrder.controller", method = { RequestMethod.POST })
	public String GetMemberOrder(String getListByUserNo,OrderViewVO view,Model model, HttpSession session) {
		if(getListByUserNo.equals("getListByUserNo")) {
			
		}
		
		
		MemberDataVO memberDataVO = (MemberDataVO) session.getAttribute("user");
		
		List<OrderViewVO> list = detailservice.selectByUserNo(memberDataVO.getUserno());
		String showactive = "show active";
		String active = "class=\"active\"";
		model.addAttribute("active2",active);
		model.addAttribute("showactive2",showactive);
		model.addAttribute("list",list);
		System.out.println("list" + list);
		return "/front-end/memberData/my-account-member.jsp";
		
		
	
	}
}
