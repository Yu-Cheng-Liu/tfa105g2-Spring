package web.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import web.product.entity.ProductVO;
import web.product.service.ProductServiceInterface;

@Controller
public class productSelectAllForBackstage {
	
	@Autowired
	private ProductServiceInterface service;
	
	@ResponseBody
	@PostMapping(value = "/backstage/productSelectAll.controller")
	public String productSelectAll() {
		
		Gson gson = new Gson();
		List<ProductVO> list = service.selectAll();
		return gson.toJson(list);
		
	}
}
