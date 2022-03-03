package web.cart.controller;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import web.cart.entity.CartVO;
import web.cart.service.CartServiceInterface;
import web.memberdata.dao.MemberDataDAO;
import web.memberdata.entity.MemberDataVO;
import web.product.entity.ProductVO;
import web.product.entity.ProductView;
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
	
		System.out.println("33333333333");	
		session = req.getSession();
		List<CartVO> buyList = (Vector<CartVO>) session.getAttribute("myCart");
		
		// 商品加入購物車
		if("AddCart".equals(action)) {
			// 取得要新增的商品
			CartVO cartVo = getCart(req);
			
			if (buyList == null) {
				buyList = new Vector<CartVO>();
				
				boolean result = buyList.add(cartVo);
				System.out.println("result:" + result);
				System.out.println("buyList:" + buyList);
				System.out.println("cartVo:" + cartVo);
			} else {
			
			// ?????為什麼進不去這邊？導致相同商品數量無法相加？？？
			// 如果新增相同商品，數量要相加
			if(buyList.contains(cartVo)) {
				Integer inCartAmount = buyList.get(prodNo).getProdAmount();
				System.out.println("inCartAmount:" + inCartAmount);
				Integer newAmount = inCartAmount + prodAmount;
				System.out.println("newAmount:" + newAmount);
			} else {
				buyList.add(cartVo);
			}
			
//				if(buyList.contains(cartVo)) {
//					System.out.println(buyList.contains(cartVo));
//					CartVO innerCart = buyList.get(buyList.indexOf(cartVo));
//					System.out.println("buyList:" + buyList);
//					System.out.println(buyList.indexOf(cartVo));
//					System.out.println("innerCart:" + innerCart);
//					
//					innerCart.setProdAmount(innerCart.getProdAmount() + cartVo.getProdAmount());
//				} else {
//					buyList.add(cartVo);
//				}
			}
		}
		session.setAttribute("myCart", buyList);
		
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