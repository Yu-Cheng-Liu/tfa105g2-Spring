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
	public String OrderDetails(String getListByCompNo, Model model, HttpSession session) {
		
		System.out.println(getListByCompNo);
		if (",getListByCompNo".equals(getListByCompNo)) {
			Integer attribute = (Integer) session.getAttribute("compNo");
			System.out.println(attribute);
			
			String classes = "show active";
//			Integer compNo = Integer.parseInt(attribute);

			List<OrderDetail> selects = (List<OrderDetail>) odsi.selectWithCompNo(attribute);
			Map<String, String> errors = odsi.getErrors();
			
			System.out.println(selects);

			if (errors.size() != 0) {
				model.addAttribute("errors", errors);
				model.addAttribute("classes2",classes);
				String active = "class=\"active\"";
				model.addAttribute("attrs3", active);
				return "/front-end/compData/comp-index.jsp";
			} else {
				model.addAttribute("list", selects);
				model.addAttribute("classes2",classes);
				String active = "class=\"active\"";
				model.addAttribute("attrs3", active);
				return "/front-end/compData/comp-index.jsp";
			}

		}
		
		return "/front-end/compData/comp-index.jsp";
	}

}
