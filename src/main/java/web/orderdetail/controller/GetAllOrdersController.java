package web.orderdetail.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import web.orderdetail.entity.OrderDetail;
import web.orderdetail.service.OrderDetailServiceInterface;

@Controller
public class GetAllOrdersController {
	@Autowired
	private OrderDetailServiceInterface odsi;

	@GetMapping("/secure/getAllOrders.controller")
	public String OrderDetails(String getListByCompNo, String select, Model model, HttpSession session) {
		
		System.out.println(getListByCompNo);
		if ("getListByCompNo".equals(getListByCompNo)) {
			String attribute = (String) session.getAttribute("compNo");

			Integer compNo = Integer.parseInt(attribute);

			List<OrderDetail> selects = (List<OrderDetail>) odsi.selectWithCompNo(compNo);
			Map<String, String> errors = odsi.getErrors();

			if (errors.size() != 0) {
				model.addAttribute("errors", errors);
				return "/front-end/compData/comp-index.jsp";
			} else {
				model.addAttribute("list", selects);
				return "/front-end/compData/comp-index.jsp";
			}

		}
		
		return "/front-end/compData/comp-index.jsp";
	}

}
