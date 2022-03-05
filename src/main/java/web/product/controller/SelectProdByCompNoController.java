package web.product.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import web.product.entity.ProductVO;
import web.product.service.ProductServiceInterface;

@Controller
public class SelectProdByCompNoController {
	
	@Autowired
	private ProductServiceInterface service;
	
	@PostMapping(value="/secure/productManagement.controller" )
	public String select(Model model , HttpSession session) {
		
		Integer compNo = (Integer) session.getAttribute("compNo");
		System.out.println(compNo);
		
		List <ProductVO> list = service.selectProdByCompNo(compNo);
		
//		System.out.println(list);
		if(list!=null) {
			
			model.addAttribute("prods", list);
			String classes = "show active";
			model.addAttribute("classes3",classes);
			String active = "class=\"active\"";
			model.addAttribute("attrs4", active);
			
			return "/front-end/compData/comp-index.jsp";
		}else {
			
			String classes = "show active";
			model.addAttribute("classes3",classes);
			String active = "class=\"active\"";
			model.addAttribute("attrs4", active);
			return "/front-end/compData/comp-index.jsp";
		}
		
	}

}
