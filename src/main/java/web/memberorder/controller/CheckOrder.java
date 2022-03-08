package web.memberorder.controller;

import java.util.*;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import antlr.collections.impl.Vector;
import web.cart.entity.CartVO;
import web.memberdata.entity.MemberDataVO;
import web.memberdata.service.MemberDataServiceInterface;
import web.memberorder.entity.DeliveryStatusVO;
import web.memberorder.entity.DeliveryTypeVO;
import web.memberorder.entity.MemberOrderVO;
import web.memberorder.service.MemberOrderServiceInterface;
import web.orderdetail.entity.OrderDetail;
import web.orderdetail.service.OrderDetailServiceInterface;

@Controller
public class CheckOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Autowired
	private MemberOrderServiceInterface memberorderservice;
	@Autowired
	private OrderDetailServiceInterface detailService;

	@RequestMapping(value = "/front-end/memberorder/CheckOrder.controller", method = { RequestMethod.POST })
	public String Checkout(MemberOrderVO vo, OrderDetail detailVO,Model model, HttpSession session,HttpServletRequest req, HttpServletResponse res) {

		Map<String, String> errorMsgs = new HashMap<String, String>();


		if (vo.getMemberName() == null || vo.getMemberName().trim().length() == 0) {
			errorMsgs.put("memberName", "請輸入名字");
			model.addAttribute("errorMsgs", errorMsgs);
		}

		String deliveryAddressReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,50}$";
		if (vo.getDeliveryAddress() == null || vo.getDeliveryAddress().trim().length() == 0) {
			errorMsgs.put("deliveryAddress", "請輸入收件人地址！");
			model.addAttribute("errorMsgs", errorMsgs);
		} else if (!vo.getDeliveryAddress().trim().matches(deliveryAddressReg)) {
			errorMsgs.put("deliveryAddress", "請輸入收件人地址！");
			model.addAttribute("errorMsgs", errorMsgs);
		}

		String memberPhoneReg = "^(0-9){10,10}$";
		if (vo.getMemberPhone() == null || vo.getMemberPhone().trim().length() == 0) {
			errorMsgs.put("memberPhone", "請輸入手機號碼！");
			model.addAttribute("errorMsgs", errorMsgs);
		} else if (vo.getMemberPhone().trim().matches(memberPhoneReg)) {
			errorMsgs.put("memberPhone", "請輸入正確號碼！");
			model.addAttribute("errorMsgs", errorMsgs);
		}
		
		
		session = req.getSession();
		  List<CartVO> buyList = (List<CartVO>) session.getAttribute("myCart");
		
		// 計算商品總金額
	    int total = 0;
	    for(int i = 0; i < buyList.size(); i++) {
	     CartVO order = buyList.get(i);
	     System.out.println("compNO " +order.getCompNo() );
	     System.out.println("order:" + order);
	     Integer price = order.getProdPrice();
	     Integer quantity = order.getProdAmount();
	     total += (price * quantity);
	       
	    }
	    String amount = String.valueOf(total);
	    System.out.println("amount:" + amount);
	    session.setAttribute("amount", amount);
	    
		vo.setPayType("信用卡");
		vo.setUserNo(1);
		vo.setDeliveryStatusCode(1);
		vo.setDeliveryTypeCode(1);
		vo.setTotal(200);
		

		if (!errorMsgs.isEmpty()) {
			model.addAttribute("memberName", vo.getMemberName());
			model.addAttribute("memberPhone", vo.getMemberPhone());
			model.addAttribute("deliveryAddress", vo.getDeliveryAddress());
			return "/front-end/product/checkout.jsp";
		}
		
		MemberOrderVO newOrderVO = memberorderservice.addOrder(vo);
		System.out.println("newOrderVO="+newOrderVO);
		
		session.setAttribute("orderNo", newOrderVO.getOrderNo());
		
		Integer prodNo = (Integer) session.getAttribute("prodNo");
		Integer compNo = (Integer) session.getAttribute("compNo");
		String prodName = (String) session.getAttribute("prodName");
		Integer prodAmount = (Integer) session.getAttribute("prodAmount");
		Integer prodPrice = (Integer) session.getAttribute("prodPrice");		
		
		detailVO.setProdNo(prodNo);	
		detailVO.setCompNO(compNo);
		detailVO.setProdName(prodName);
		detailVO.setProdAmount(prodAmount);
		detailVO.setProdPrice(prodPrice);
	
		detailService.addOrderDetail(detailVO);

		return "/front-end/product/credit.jsp";
	}
}
