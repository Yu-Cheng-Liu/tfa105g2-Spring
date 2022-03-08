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
		System.out.println("action=" + action);
		session = req.getSession();
		List<CartVO> buyList = (Vector<CartVO>) session.getAttribute("myCart");
		
		// 檢視購物車
		if(!action.equals("CheckOut")) {
			
			if(buyList != null && (buyList.size() > 0)) {
				
				// 在購物車頁面刪除購物車商品
				if(action.equals("Cancel")) {
					System.out.println("action=" + action);
					String cancel = req.getParameter("cancel");
					System.out.println("cancel:" + cancel);
					int c = Integer.parseInt(cancel);
					System.out.println("c:" + c);
					buyList.remove(c);
				}
				
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
				Integer buyListCount = buyList.size();
				session.setAttribute("buyListCount", buyListCount);
				System.out.println("buyListCountInt:" + buyListCount);
					
				}
			else {
				// 如果購物車是空的
				String nothing = "購物車空空如也.....";
				session.setAttribute("nothing", nothing);
				// 有時間的話設定五秒後跳轉頁面回商品總覽
			}
			// 跳轉回購物車頁面
			return "/front-end/product/cart.jsp";
			
		}else {
			// 結帳
			return "redirect:/front-end/product/checkout.jsp";
		}
		
	}

}
