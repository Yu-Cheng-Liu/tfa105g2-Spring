package web.booking.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.booking.entity.BookingVO;
import web.booking.service.BookingService;

@Controller
public class BookingController {
	@Autowired
	private BookingService service;
	
	
	
	@RequestMapping(value = "/front-end/booking/booking.controller" , method = {RequestMethod.POST})
	public String booking(String userNo, String towerNo , String orderNo , String reserveDate , String remark ,Model model , HttpSession session) {
		
		DateFormat sFormat = new SimpleDateFormat("yyyy-MM-dd");
		String regexNumberOnly = "[0-9]+";
		String regexDate       = "\\d{4}-\\d{2}-\\d{2}";
		Map<String, String> errors = new HashMap<String, String>();
		
		if(!towerNo.matches(regexNumberOnly)) {
			errors.put("towerNo", "塔位只接受數字");
			model.addAttribute("errors", errors);
		}
		if ("".equals(towerNo)) {
			errors.put("towerNo", "塔位不可空白");
			model.addAttribute("errors", errors);
		}
//		if("".equals(orderNo)) {
//			errors.put("orderNo","訂單編號不可空白");
//			req.setAttribute("errors", errors);
//		}
		if(!reserveDate.matches(regexDate)) {
			errors.put("reserveDate", "只接受yyyy-mm-dd格式");
			model.addAttribute("errors", errors);
		}
		if ("".equals(reserveDate)) {
			errors.put("reserveDate", "請選擇預約時間");
			model.addAttribute("errors", errors);
		}

		if (errors.size() != 0) {
		
			model.addAttribute("userNo", userNo);
			model.addAttribute("orderNo", orderNo);
			model.addAttribute("remark", remark);
//			req.setAttribute("errors", errors);
		
			return "/front-end/booking/error.jsp";
			
		} else {
			java.util.Date ReserveDate=null;
			try {
				BookingVO bean = new BookingVO();
				ReserveDate = sFormat.parse(reserveDate);
				if("".equals(userNo)) {
					Integer UserNo = null;
					bean.setUserNo(UserNo);
				}else {
					Integer UserNo = Integer.parseInt(userNo);
					bean.setUserNo(UserNo);
				}
				if("".equals(orderNo)) {
					Integer OrderNo = null;
					bean.setOrderNo(OrderNo);
				}else {Integer OrderNo=Integer.parseInt(orderNo);
				          bean.setOrderNo(OrderNo);}

				Integer TowerNo = Integer.parseInt(towerNo);
				
			
				bean.setTowerNo(TowerNo);
			
				bean.setReserveDate(ReserveDate);
				bean.setRemark(remark);
				if (!"".equals(reserveDate)) {
		

					service.insert(bean);

					session.setAttribute("bookingNo", bean.getBookingNo());
					session.setAttribute("towerNo", bean.getTowerNo());
					session.setAttribute("userNo", bean.getUserNo());
					session.setAttribute("orderNo", bean.getOrderNo());
					session.setAttribute("reserveDate", bean.getReserveDate());
					session.setAttribute("remark", bean.getRemark());
					
					return "/front-end/booking/showbooking.jsp";

				} else {
					System.out.println("資料錯誤或根本沒跑");
				}

			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		return "/front-end/booking/error.jsp";
		
		
		
	
		
	}
}