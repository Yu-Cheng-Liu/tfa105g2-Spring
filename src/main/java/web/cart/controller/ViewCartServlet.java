package web.cart.controller;

import java.util.List;
import java.util.Vector;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.cart.entity.CartVO;
import web.memberdata.entity.MemberDataVO;

@Controller
public class ViewCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@RequestMapping(value = "/ViewCart.controller", method = { RequestMethod.GET })
	public String ViewCart(@PathParam("prodNo") Integer prodNo, String prodName, Integer prodPrice, Integer prodStock, @PathParam("prodAmount") Integer prodAmount, Integer userno, String action, HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) {
		
		MemberDataVO memberDataVo = (MemberDataVO) session.getAttribute("user");
		System.out.println("8888888888");	
//		System.out.println("action=" + action);
		session = req.getSession();
		List<CartVO> buyList = (Vector<CartVO>) session.getAttribute("myCart");
		
		// 檢視購物車
		if(!action.equals("CheckOut")) {
			
			if(buyList != null) {
				
				// 刪除購物車商品
				if(action.equals("Cancel")) {
					System.out.println("action=" + action);
					String cancel = req.getParameter("cancel");
					System.out.println("cancel:" + cancel);
					int c = Integer.parseInt(cancel);
					System.out.println("c:" + c);
					buyList.remove(c);
					
				}
				
				// 修改個別商品數量
//				CartVO cartVo = getCart(req);
//				if(buyList.contains(cartVo)) {
//					System.out.println(buyList.contains(cartVo));
//					CartVO innerCart = buyList.get(buyList.indexOf(cartVo));
//					System.out.println("buyList:" + buyList);
//					System.out.println(buyList.indexOf(cartVo));
//					System.out.println("innerCart:" + innerCart);
//								
//					innerCart.setProdAmount(innerCart.getProdAmount() + cartVo.getProdAmount());
//				}
//				if(action.equals("ChangeAmount")) {
//					prodAmount = Integer.parseInt(req.getParameter("prodAmount"));
//					System.out.println("prodAmount:" + prodAmount);
//					session.setAttribute("prodAmount", prodAmount);
//					return "/front-end/product/cart.jsp";
//				}
				
				// 計算商品總金額
				int total = 0;
				for(int i = 0; i < buyList.size(); i++) {
					CartVO order = buyList.get(i);
					System.out.println("order:" + order);
					Integer price = order.getProdPrice();
					Integer quantity = order.getProdAmount();
					total += (price * quantity);
							
				}
				String amount = String.valueOf(total);
				System.out.println("amount:" + amount);
				session.setAttribute("amount", amount);
					
				session.setAttribute("myCart", buyList);
				Integer buyListCountInt = buyList.size();
				session.setAttribute("buyListCountInt", buyListCountInt);
				System.out.println("buyListCountInt:" + buyListCountInt);
					
				}
			else {
				// 購物車是空的
				String nothing = "購物車空空如也.....";
				session.setAttribute("nothing", nothing);
			}
			return "/front-end/product/cart.jsp";
		}else {
//			if(memberDataVo == null) {
//				return "/front-end/memberData/login-register-member.jsp";
//			}
			return "/front-end/product/checkout.jsp";
		}
		
	}
//	private CartVO getCart(HttpServletRequest req) {
//		Integer cprodNo = Integer.valueOf(req.getParameter("prodNo"));
//		String cprodName = req.getParameter("prodName");
//		Integer cprodPrice = Integer.valueOf(req.getParameter("prodPrice"));
//		Integer cprodAmount = Integer.valueOf(req.getParameter("prodAmount"));
////		System.out.println("prodNo:" + cprodNo);
////		System.out.println("prodName:" + cprodName);
////		System.out.println("prodPrice:" + cprodPrice);
////		System.out.println("prodAmount:" + cprodAmount);
//		
//		CartVO cartVo = new CartVO();
//		cartVo.setProdNo(cprodNo);
//		cartVo.setProdName(cprodName);
//		cartVo.setProdPrice(cprodPrice);
//		cartVo.setProdAmount(cprodAmount);
//		return cartVo;
//		
//	}

}
