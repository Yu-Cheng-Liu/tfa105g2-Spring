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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.cart.entity.CartVO;
import web.cart.service.CartServiceInterface;
import web.memberdata.dao.MemberDataDAO;
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
		
		// 不管是否登入都加入購物車
		if("AddCart".equals(action)) {
			
			session = req.getSession();
			Map<Integer, Integer> myCart = (Map) session.getAttribute("myCart");
			action = req.getParameter("action");
			
			// 如果購物車為null就先實體化
			if(myCart == null) {
				myCart = new HashMap<Integer, Integer>();
				session.setAttribute("myCart", myCart);
			}
			
			
			// 拿到請求得到的商品id，再拿商品要新增的數量
//			Integer prodNoInt = (Integer) session.getAttribute("prodNo");
//			Integer prodAmountInt = (Integer) model.getAttribute("prodAmount");
			System.out.println("prodAmount:" + prodAmount);
			
			// 確認購物車內是否有相同的商品，有的話做加總，更新購物車狀態
			if(myCart.get(prodNo) != null) {
				Integer inCartAmount = myCart.get(prodNo);
				Integer newAmount = inCartAmount + prodAmount;
				myCart.put(prodNo, newAmount);
			}
			
			
			// 沒有相同商品的話要加入myCart
			if(myCart.get(prodNo) == null) {
				myCart.put(prodNo, prodAmount);
				
			}
			
			System.out.println("myCart:" + myCart);
			
			// 將myCart裡面的資料拿出到右上角購物車
//			Map<String, String[]> parameterMap = req.getParameterMap();
//			Set<String> keySet = parameterMap.keySet(); // 將Map內的所有鍵轉存成Set物件
			
			ProductVO result = productServiceInterface.selectByProdNo(prodNo);
			String cprodName = result.getProdName();
			model.addAttribute("cprodName", cprodName);
			Integer cprodPrice = result.getProdPrice();
			model.addAttribute("cprodPrice", cprodPrice);
			
			
			// 判斷登入與否，登入才能寫進資料庫
//			CartVO result = cartServiceInterface.selectByProdNo(prodNo);
//			String cprodName = result.getProdName();
//			model.addAttribute("cprodName", cprodName);
//			Integer cprodPrice = result.getProdPrice();
//			model.addAttribute("cprodPrice", cprodPrice);
//			Integer cprodAmount = result.getProdAmount();
//			model.addAttribute("cprodAmount", cprodAmount);
			
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
		return "/front-end/product/SingleProduct.jsp";	
			
			
					
					
					
					
					
			
					
		
		
		
		
		
		// 先判斷是否登入
//		MemberDataVO memberDataVo = (MemberDataVO) session.getAttribute("user");
//		if(memberDataVo == null) {
//			return "/front-end/memberData/login-register-member.jsp";
//		}
//		
//		// 登入後商品資訊加入購物車
//		CartVO cartVo = (CartVO) session.getAttribute("prodNo");
//		
//		CartVO addToCart = cartServiceInterface.addToCart(cartVo);
//		
//		
//		Integer prodNoInt = Integer.valueOf(prodNo);
//		model.addAttribute("prodNo", prodNoInt);
//		
	}
		
		
		
		
		
		
		
		// 未登入前購物車，從session拿出暫存購物車資料
		
		
		
		
		// 取得所有req的parameter，動態做迭代
//		Map<String, String[]> parameterMap = req.getParameterMap();
//		Set<String> keySet = parameterMap.keySet(); // 將Map內的所有鍵轉存成Set物件
//		Iterator<String> iterator = keySet.iterator();
//		while(iterator.hasNext()) {
//			// 某商品在session購物車中紀錄的數量
//			String key = iterator.next();
//			Integer inCartQuantity = myCart.get(key);
//			// 如果商品沒有在購物車裡，要設定數量為0
//			if(inCartQuantity == null) {
//				inCartQuantity = 0;
//			}
//			Integer newQuantity = 0;
//			
//			
//			// 新增某商品的數量
//			String[] values = parameterMap.get(key);
//			String value = values[0];
//			Integer addQuantity = String2Integer(value);
//				
//			// 如果商品已存在購物車，要做數量加總，但超過庫存數量範圍要顯示錯誤訊息，且數量為庫存最大數量
//			newQuantity = addQuantity + inCartQuantity;
//			if(newQuantity > prodStock) {
//				newQuantity = prodStock;
//				req.setAttribute("errMsg", "已達庫存上限");
//			}
//			
//			
//			// 數量不允許負數
//			if(newQuantity < 0) {
//				newQuantity = 0;
//			}
//			
//			// 更新購物車
//			myCart.put(key, newQuantity);
			
//		}
//		return "";
//	}

	// 將字串或null轉成數字
//	private Integer String2Integer(String number) {
//		if(number == null || "".equals(number.trim())) {
//			return 0;
//		}
//		return Integer.valueOf(number);
//	}
		
	
//	Integer userNo = Integer.valueOf(userno);
//	if(userNo == null) {
//		return "/front-end/memberData/login-register-member.jsp";
//	}
		

}
