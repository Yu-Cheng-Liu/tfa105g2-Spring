package web.product.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import web.product.entity.ProductVO;
import web.product.service.ProductServiceInterface;
@Controller
public class GetProductNameController {

	 @Autowired
	 private ProductServiceInterface service;

	 @ResponseBody
	 @PostMapping(value = "/secure/getProductName.controller")
	 public String getProductName(HttpSession session) {

	  Integer compNo = (Integer)session.getAttribute("compNo");
	  List<ProductVO> list = service.selectProdByCompNo(compNo);

	  Gson gson = new Gson();
	  return gson.toJson(list);
	 }

	}