package web.product.controller;

import java.util.List;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
	public String AllProduct(String action, Integer prodTypeCode, HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) {
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
			
			// 顯示商品分類個別數量
			prodTypeCode = Integer.parseInt(req.getParameter("prodTypeCode"));
//			prodTypeCode = (Integer) model.getAttribute("prodTypeCode");
			System.out.println("prodTypeCode:" + prodTypeCode);
			Integer typeCount = productService.selectByProdType(prodTypeCode).size();
			model.addAttribute("typeCount", typeCount);
			

			return "/front-end/product/CategoryProduct.jsp";

		} 
		else {
			return "/front-end/product/AllProduct.jsp";
		}
	}

}
