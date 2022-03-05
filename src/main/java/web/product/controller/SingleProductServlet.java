package web.product.controller;

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

@Controller
@MultipartConfig
public class SingleProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	@Autowired
	private ProductServiceInterface productService;
	
	@RequestMapping(value = "/SingleProductServlet.controller", method = { RequestMethod.GET })
	public String SingleProduct(String action, Integer prodNo, Model model, HttpSession session) {
		System.out.println("action=" + action);
		
//		String prodName = req.getParameter("prodName");
//		model.addAttribute("prodName", prodName);
		
		Integer prodNoInt = Integer.valueOf(prodNo);
		model.addAttribute("prodNo", prodNoInt);
		
		ProductVO result = productService.selectByProdNo(prodNoInt);
//		model.addAttribute("result", result);
		String prodName = result.getProdName();
		model.addAttribute("prodName", prodName);
		Integer prodPrice = result.getProdPrice();
		model.addAttribute("prodPrice", prodPrice);
		Integer discountPrice = (int) (result.getProdPrice()*0.9);
		model.addAttribute("discountPrice", discountPrice);
//		Integer prodNo = result.getProdNo();
//		model.addAttribute("prodNo", prodNo);
		Integer prodStock = result.getProdStock();
		if(prodStock == 0) {
			model.addAttribute("prodStock", 0);
		}else {
			model.addAttribute("prodStock", prodStock);
		}
		String prodDesc = result.getProdDesc();
		model.addAttribute("prodDesc", prodDesc);
		
		return "/front-end/product/SingleProduct.jsp";

//		String prodName = req.getParameter("prodName");
//		ProductVO getName = productService.selectByName(vo.getProdName());
//		model.addAttribute("getName", getName);
	}

}
