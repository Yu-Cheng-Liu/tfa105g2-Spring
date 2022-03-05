package web.cart.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@WebServlet("/CheckOut.controller")
public class CheckOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@RequestMapping(value = "/CheckOut.controller", method = { RequestMethod.GET })
	public String checkout() {
		
		
		return "/front-end/product/checkout.jsp";
		
	}

}