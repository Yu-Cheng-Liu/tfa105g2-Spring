package web.memberorder.contorller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.memberorder.entity.MemberOrderVO;
import web.memberorder.service.MemberOrderServiceInterface;


@Controller
public class CancelOrder  {
       

	@Autowired
	private MemberOrderServiceInterface orderservice;
	
	@RequestMapping(value = "/front-end/product/CancelOrder.controller", method = { RequestMethod.POST })
	public String addOrder(Integer orderNo, Model model, HttpSession session) {
		
		Map<String, String> errorMsgs = new HashMap<String, String>();
		model.addAttribute("errorMsgs", errorMsgs);
		
		orderNo = (Integer) model.getAttribute("orderNo");
		
		MemberOrderVO orderVO = orderservice.selectOne(orderNo);
		
		boolean cancelOrder = orderservice.cancelOrder(orderVO);
		
		if(!cancelOrder) {
			List<MemberOrderVO> temp = orderservice.selectAll(orderVO);
			model.addAttribute("select",temp);
			return "";
		}
		return "";
		
	}
	
}
