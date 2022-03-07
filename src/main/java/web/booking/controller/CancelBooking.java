package web.booking.controller;


import java.util.HashMap;
import java.util.List;
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
public class CancelBooking  {
	@Autowired
	private BookingService service;
	@RequestMapping(value="/front-end/booking/cancelbooking.controller",method= {RequestMethod.POST})
	public String cancelbooking(String cancelbookingion,String towerNo,String bookingNo,Model model,HttpSession session) {
		
	
		Map<String, String> errors = new HashMap<String, String>();
		model.addAttribute("errors", errors);
		
		
		if ("delete".equals(cancelbookingion)) {
		
						
			if (bookingNo == null || "".equals(bookingNo)) {
				errors.put("towerNo", "沒有這筆預約");
				model.addAttribute("errors", errors);
				
				
			}
			int towerno=0;
			int bookingno=0;
			try {
				
//				java.util.Date RreserveDate = null;
				towerno=Integer.parseInt(towerNo);
				bookingno=Integer.parseInt(bookingNo);
				
				BookingVO bean = service.selectByBookingNo(bookingno);
				
				
				boolean bv = service.delete(bean);
				
				if (!bv) {
					
					List<BookingVO> result= service.selectAll(towerno);
					model.addAttribute("select", result);
					return"/front-end/booking/showinquirybooking.jsp";
				} else {
					
					List<BookingVO> result= service.selectAll(towerno);
					model.addAttribute("select", result);
					return"/front-end/booking/showinquirybooking.jsp";
				}
				
				

			}

			catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "/front-end/booking/showinquirybooking.jsp";

	}


	}

