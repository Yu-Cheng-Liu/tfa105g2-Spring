package web.cart.controller;

import java.util.List;
import java.util.Vector;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.cart.entity.CartVO;
import web.cart.service.CartServiceInterface;
import web.memberdata.entity.MemberDataVO;
import web.product.entity.ProductVO;
import web.product.service.ProductServiceInterface;

@Controller
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private CartServiceInterface cartServiceInterface;
	
	@Autowired
	private ProductServiceInterface productServiceInterface;
	
	@RequestMapping(value = "/CartServlet.controller", method = { RequestMethod.GET })
    public String Cart(@PathParam("prodNo") Integer prodNo, String prodName, Integer prodPrice, Integer prodStock, @PathParam("prodAmount") Integer prodAmount, Integer userno, String action, HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) {
		
		MemberDataVO memberDataVo = (MemberDataVO) model.getAttribute("user");
		System.out.println("33333333333");	
		System.out.println("action=" + action);
		session = req.getSession();
		List<CartVO> buyList = (Vector<CartVO>) session.getAttribute("myCart");
		
		if(!action.equals("CheckOut")) {
			
			// 檢視購物車
			if (action.equals("ViewCart")) {
				

				return "/front-end/product/cart.jsp";

			}
		
			// 刪除購物車商品，要再帶回參數，jsp才吃得到
			if(action.equals("Delete")) {
				System.out.println("delete");
				String del = req.getParameter("del");
				System.out.println("del:" + del);
				int d = Integer.parseInt(del);
				System.out.println("d:" + d);
				buyList.remove(d);
				prodNo = Integer.parseInt(req.getParameter("prodNo"));
				ProductVO pVO = productServiceInterface.selectByProdNo(prodNo);
				prodName = pVO.getProdName();
				prodPrice = pVO.getProdPrice();
				prodStock = pVO.getProdStock();
			}
		
			// 商品加入購物車
			if(action.equals("AddCart")) {
				// 取得要新增的商品
				CartVO cartVo = getCart(req);
							
				if (buyList == null) {
					buyList = new Vector<CartVO>();
					boolean result = buyList.add(cartVo);
					System.out.println("result:" + result);
					System.out.println("buyList:" + buyList);
					System.out.println("cartVo:" + cartVo);
				} else {
					if(buyList.contains(cartVo)) {
						System.out.println(buyList.contains(cartVo));
						CartVO innerCart = buyList.get(buyList.indexOf(cartVo));
						System.out.println("buyList:" + buyList);
						System.out.println(buyList.indexOf(cartVo));
						System.out.println("innerCart:" + innerCart);
									
						innerCart.setProdAmount(innerCart.getProdAmount() + cartVo.getProdAmount());
						
						// 為什麼進不去這邊？導致相同商品數量無法相加？加入hashcode和equals做判斷
						// 如果新增相同商品，數量要相加
		//				if(buyList.contains(cartVo)) {
		//					// ???以下這樣的寫法為什麼會出現 java.lang.ArrayIndexOutOfBoundsException: Array index out of range: 1??
		//					// 不能用商品編號來當list的索引值，就會出現超出索引值的錯誤
		//					Integer inCartAmount = buyList.get(prodNo).getProdAmount();
		//					System.out.println("inCartAmount:" + inCartAmount);
		//					Integer newAmount = inCartAmount + prodAmount;
		//					System.out.println("newAmount:" + newAmount);
		//				} else {
		//					buyList.add(cartVo);
		//				}
					} else {
						buyList.add(cartVo);
					}
				}
			}
		
			if(buyList != null) {
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
			}
			
			session.setAttribute("myCart", buyList);
			Integer buyListCount = buyList.size();
			session.setAttribute("buyListCount", buyListCount);
			System.out.println("buyListCount:" + buyListCount);
			
			// 將參數設回頁面
			model.addAttribute("prodNo", prodNo);
			session.getAttribute("prodName");
			model.addAttribute("prodName", prodName);
			session.getAttribute("prodPrice");
			model.addAttribute("prodPrice", prodPrice);
			session.getAttribute("prodStock");
			model.addAttribute("prodStock", prodStock);
			session.getAttribute("prodAmount");
			model.addAttribute("prodAmount", prodAmount);
		
			
			
		}
		// 按結帳要判斷是否登入，登入要跳結帳頁面，未登入要跳登入頁面
		else {
			if(memberDataVo == null) {
				return "/front-end/memberData/login-register-member.jsp";
			}           
			
			return "/front-end/product/checkout.jsp";
			
		}
		return "/front-end/product/SingleProduct.jsp";
		
		
	}
	
	
	
	
	private CartVO getCart(HttpServletRequest req) {
		Integer cprodNo = Integer.valueOf(req.getParameter("prodNo"));
		String cprodName = req.getParameter("prodName");
		Integer cprodPrice = Integer.valueOf(req.getParameter("prodPrice"));
		Integer cprodAmount = Integer.valueOf(req.getParameter("prodAmount"));
//		System.out.println("prodNo:" + cprodNo);
//		System.out.println("prodName:" + cprodName);
//		System.out.println("prodPrice:" + cprodPrice);
//		System.out.println("prodAmount:" + cprodAmount);
		
		CartVO cartVo = new CartVO();
		cartVo.setProdNo(cprodNo);
		cartVo.setProdName(cprodName);
		cartVo.setProdPrice(cprodPrice);
		cartVo.setProdAmount(cprodAmount);
		return cartVo;
		
	}
	
}