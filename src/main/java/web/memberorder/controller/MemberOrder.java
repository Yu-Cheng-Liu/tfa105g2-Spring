package web.memberorder.controller;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.cart.entity.CartVO;
import web.memberdata.entity.MemberDataVO;
import web.orderdetail.entity.OrderDetail;
import web.orderdetail.service.OrderDetailServiceInterface;

@Controller
public class MemberOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	@Autowired
	private OrderDetailServiceInterface detailService;
	
	@RequestMapping(value = "/front-end/memberorder/MemberOrder.controller", method = { RequestMethod.POST })
	public String Checkout(Model model, HttpSession session,HttpServletRequest req, HttpServletResponse res) {

	System.out.println("session="+session);	
		List<CartVO> buyList = (Vector<CartVO>)session.getAttribute("myCart");
		
		Integer orderNo = (Integer) session.getAttribute("orderNo");
		System.out.println("orderNo=" + orderNo);
		
		for(int i = 0 ; i < buyList.size(); i++) {
			Integer prodNo = buyList.get(i).getProdNo();
			Integer compNo = buyList.get(i).getCompNo();
			Integer prodAmount =  buyList.get(i).getProdAmount();
			String prodName = buyList.get(i).getProdName();
			Integer prodPrice = buyList.get(i).getProdPrice();
			MemberDataVO member = (MemberDataVO) session.getAttribute("user");
			Integer userNo = member.getUserno();
			
			
			OrderDetail detailVO = new OrderDetail();
			detailVO.setOrderNo(orderNo);
			detailVO.setProdNo(prodNo);	
			detailVO.setCompNO(compNo);
			detailVO.setProdName(prodName);
			detailVO.setProdAmount(prodAmount);
			detailVO.setProdPrice(prodPrice);
			
			
			detailVO = detailService.addOrderDetail(detailVO);
			System.out.println("detailVO="+detailVO);
			
			
		}
		
		Map<String,String>errors = detailService.getErrors();
		
		session.invalidate();
		
//		if(errors.size()==0) {
			return "/front-end/product/orderOK.jsp";
//		}else {
//			
//			
//			return "/front-end/product/checkout.jsp";
//		}
		
	}
		
}
