package web.product.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import web.product.dao.ProductDAOInterface;
import web.product.entity.ProductVO;
import web.product.service.ProductServiceInterface;

@Controller
public class launchAndDiscontinue {
	
	@Autowired
	private ProductServiceInterface service;
	
	private ProductDAOInterface dao ;
	
	@PostMapping(value="/secure/launchAndDiscontinue.controller")
	public String launchAndDiscontinue(String setProductStatus,String thisProduct , Model model, HttpSession session) {
		
		
		if(thisProduct==null) {
			Integer compNo = (Integer) session.getAttribute("compNo");
			System.out.println(compNo);
			
			List <ProductVO> list = service.selectProdByCompNo(compNo);
			model.addAttribute("prods", list);
			String classes = "show active";
			model.addAttribute("classes3",classes);
			String active = "class=\"active\"";
			model.addAttribute("attrs4", active);
			return "/front-end/compData/comp-index.jsp";
			
			
		}else {
		
		
		
		
		String[]prodNumbers = thisProduct.split(",");
		
	
		
		
		if(setProductStatus.equals("1")) {
		
			for(int i = 0 ; i < prodNumbers.length ; i++) {
				 ProductVO pv = service.selectByProdNo(Integer.valueOf(prodNumbers[i]));
				 
				pv.setProdVerify("1");
				
				service.update(pv);
			}	
		}else {
			for(int i = 0 ; i < prodNumbers.length ; i++) {
				 ProductVO pv = service.selectByProdNo(Integer.valueOf(prodNumbers[i]));
				 
				pv.setProdVerify("0");
				
				service.update(pv);
		}
		}
		
		
		Integer compNo = (Integer) session.getAttribute("compNo");
		System.out.println(compNo);
		
		List <ProductVO> list = service.selectProdByCompNo(compNo);
		model.addAttribute("prods", list);
		
		String classes = "show active";
		model.addAttribute("classes3",classes);
		String active = "class=\"active\"";
		model.addAttribute("attrs4", active);
		return "/front-end/compData/comp-index.jsp";
		}
	}

}
