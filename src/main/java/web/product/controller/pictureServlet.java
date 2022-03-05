package web.product.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import web.product.dao.impl.ProductDAO;
import web.product.entity.ProductVO;
import web.product.service.ProductServiceInterface;
import web.product.service.impl.ProductService;




@Controller
@MultipartConfig
public class pictureServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private ProductServiceInterface productService;
	
	@RequestMapping(value = "/pictureServlet.controller", method = { RequestMethod.GET })
	public void GetPicture (@PathParam("prodNo") Integer prodNo,  Integer prodImg, HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) throws ServletException, IOException {
		res.setContentType("image/gif");
		ServletOutputStream out = res.getOutputStream();
		
		try {
			Integer prodNoInt = Integer.valueOf(prodNo);
			ProductVO prodVO = productService.selectByProdNo(prodNoInt);
//			int prodImg = Integer.parseInt(req.getParameter("prodImg").trim());
			System.out.println(prodImg);
			
			byte[] buf = null;
			switch (prodImg) {
			case 1:
				buf = prodVO.getProdImg1();
				break;
			case 2:
				buf = prodVO.getProdImg2();
				break;
			case 3:
				buf = prodVO.getProdImg3();
			}
			
			out.write(buf);
			out.close();
			
		} catch (Exception e) {
			
			ServletContext servletContext = req.getServletContext();
			InputStream in = servletContext.getResourceAsStream("/assets/img/products/nopic.jpg");
			System.out.println(in);
			byte[] b =new byte[in.available()];
			in.read(b);
			out.write(b);
			in.close();
		}
//		return "/assets/img/products/nopic.jpg";
	}
		
		
	

}
