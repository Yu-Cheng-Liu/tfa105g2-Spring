package web.orderdetail.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import web.orderdetail.service.OrderDetailServiceInterface;
@Controller
public class UpdatePlusDeleteOrderDetailController {
	
	@Autowired
	private OrderDetailServiceInterface odsi;

	@GetMapping("/secure/updateAndDelete.controller")
	public String updateAndDelete() {
		
		
		return null;
		
		
		
	}

}
