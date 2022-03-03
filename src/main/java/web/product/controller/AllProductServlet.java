package web.product.controller;

import java.util.*;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.product.entity.ProductVO;
import web.product.service.ProductServiceInterface;
import web.producttype.entity.ProductTypeVO;
import web.producttype.service.ProductTypeServiceInterface;

@Controller
@MultipartConfig
public class AllProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ProductServiceInterface productService;

	@Autowired
	private ProductTypeServiceInterface productTypeService;

	@RequestMapping(value = "/AllProductServlet.controller", method = { RequestMethod.GET })
	public String AllProduct(String action, Integer prodTypeCode, Model model, HttpSession session) {
//		System.out.println("action=" + action);

		if ("selectAll".equals(action)) {
			// 商品頁出現所有商品
			List<ProductVO> selectAll = productService.selectAll();
			model.addAttribute("selectAll", selectAll);
//			System.out.println("selectAll=" + selectAll);

			// 商品頁顯示商品總數
			Integer selectAllCount = productService.selectAll().size();
			model.addAttribute("selectAllCount", selectAllCount);
//			System.out.println("selectAllCount=" + selectAllCount);

			// 迴圈顯示商品分類名稱
			List<ProductTypeVO> selectAllType = productTypeService.selectAll();
			model.addAttribute("selectAllType", selectAllType);
//			System.out.println("selectAllType=" + selectAllType);

			// 顯示商品分類個別數量
//			List<Integer> typeCount = new ArrayList<>();
//			for(int i = 1; i <= selectAllType.size();i++) {
//				Integer typeCount1 = productService.countByProdType(i);
//				typeCount.add(typeCount1);
////				System.out.println(typeCount);
//			}
//			session.setAttribute("typeCount", typeCount);
			return "/front-end/product/AllProduct.jsp";
		}
		
		if ("selectByType".equals(action)) {
			// 商品分類搜尋
			Integer prodTypeCodeInt = Integer.valueOf(prodTypeCode);

			List<ProductVO> result = productService.selectByProdType(prodTypeCodeInt);
			model.addAttribute("result", result);
//			System.out.println("selectByProdType=" + result);

			// 迴圈顯示商品分類名稱
			List<ProductTypeVO> selectAllType = productTypeService.selectAll();
			model.addAttribute("selectAllType", selectAllType);
//			System.out.println("selectAllType=" + selectAllType);

			return "/front-end/product/CategoryProduct.jsp";

		} 
		else {
			return "/front-end/product/AllProduct.jsp";
		}
	}

}

// 商品頁的商品分類數量
//		Integer type1 = productService.countByProdType(1);
//		Integer type2 = productService.countByProdType(2);
//		Integer type3 = productService.countByProdType(3);
//		Integer type4 = productService.countByProdType(4);
//		session.setAttribute("type1", type1);
//		session.setAttribute("type2", type2);
//		session.setAttribute("type3", type3);
//		session.setAttribute("type4", type4);

// 左邊拉霸價格區間
//		List<ProductVO> selectByPrice = productService.selectByPrice(vo.getProdPrice(), vo.getProdPrice());
//		session.setAttribute("selectByPrice", selectByPrice);
//				
//		Map<String, Integer> getPrice = productService.getPrice();
//		session.setAttribute("getPrice", getPrice);
//		
//		

//		Integer prodTypeCount = vo.getProdTypeCode();
//		Integer typeCount = productService.countByProdType(prodTypeCount);
//		session.setAttribute("typeCount", typeCount);

//		String selectTypeDesc = typeVo.getProdTypeDesc();
//		session.setAttribute("selectTypeDesc", selectTypeDesc);

//		List<ProductVO> prodTypeDesc = productService.selectProdTypeDesc();
//		session.setAttribute("prodTypeDesc", prodTypeDesc);
//		
//		Integer prodType = productService.countByProdType(prodTypeVO);	
//		session.setAttribute("prodTypeVO", prodType);

//		ProductTypeVO typeVo = new ProductTypeVO();		
