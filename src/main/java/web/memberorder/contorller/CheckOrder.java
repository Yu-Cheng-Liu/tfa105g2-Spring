package web.memberorder.contorller;

import java.time.LocalDateTime;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.memberdata.entity.MemberDataVO;
import web.memberdata.service.MemberDataServiceInterface;
import web.memberorder.entity.MemberOrderVO;
import web.memberorder.service.MemberOrderServiceInterface;

@Controller
public class CheckOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private MemberOrderServiceInterface memberorderservice;
	
	@Autowired
	private MemberDataServiceInterface memberdataservice;
	
	@RequestMapping(value="/front-end/memberorder/CheckOrder.controller", method= {RequestMethod.POST})
	public String Checkout(String username,
						   String address,
						   String donate,
						   Integer fee,
						   Integer amount,
						   Integer total,
						   LocalDateTime orderDate,
						   Model model, 
						   HttpSession session) {
		
		Map<String, String> errorMsgs = new LinkedHashMap<String, String>();
		
//		String username = (String) session.getAttribute("username");
		if (username == null || username.trim().length() == 0) {
			errorMsgs.put("username", "請輸入名字");
			model.addAttribute("errorMsgs", errorMsgs);
		}

//		String address = (String) session.getAttribute("address");
//		deliveryAddress = (String) session.getAttribute("deliveryAddress");
		String deliveryAddressReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,50}$";
		if (address == null || address.trim().length() == 0) {
			errorMsgs.put("address", "請輸入收件人地址！");
			model.addAttribute("errorMsgs", errorMsgs);
		} else if (!address.trim().matches(deliveryAddressReg)) {
			errorMsgs.put("address", "請輸入收件人地址！");
			model.addAttribute("errorMsgs", errorMsgs);
		}
		
		
		fee = 200;
		if (donate == null || donate.trim().length() == 0) {
			errorMsgs.put("donate", "請選擇捐贈或寄送！");
			model.addAttribute("errorMsgs", errorMsgs);
		} else if ("yes".equals(donate)) {
			total = amount + fee;
		}
		
		MemberOrderVO memberVO = new MemberOrderVO();
		memberVO.setDeliveryStatusCode(1);
		memberVO.setDeliveryTypeCode(1);
		memberVO.setDonate(donate);
		memberVO.setPayType("信用卡");
		memberVO.setDeliveryAddress(address);
		memberVO.setOrderDate(orderDate);
		memberVO.setTotal(total);
		
		MemberDataVO memVO = new MemberDataVO();
		memVO.setAddress(address);
		memVO.setUsername(username);
		
		if(!errorMsgs.isEmpty()) {
			model.addAttribute("username", username);
//			model.addAttribute("phone", phone);
			model.addAttribute("address", address);
//			model.addAttribute("donate",donate);
			return "/front-end/product/checkout.jsp";
		}
		
		memberVO = memberorderservice.addOrder(memberVO);
		memVO = memberdataservice.editPersonalProfile(memVO);
		return "/front-end/product/add-product.jsp";
	}
}
