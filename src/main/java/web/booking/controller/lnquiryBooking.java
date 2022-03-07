package web.booking.controller;

import java.text.DateFormat;

import java.text.SimpleDateFormat;
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
import web.memberdata.entity.MemberDataVO;

@Controller
public class lnquiryBooking{
	@Autowired
	private BookingService service;
		
	@RequestMapping(value="/front-end/booking/inquirybooking.controller",method= {RequestMethod.GET})
	public String lnquirybooking(String bookingion,String reserveDate,String towerNo,Model model,HttpSession session) {
		
		DateFormat sFormat=new SimpleDateFormat("yyyy-MM-dd");
		MemberDataVO mv= (MemberDataVO)session.getAttribute("user");
		Integer userNo = mv.getUserno();
		if(userNo==null) {
			return"front-end/memberData/login-register-member.jsp";
		}else {
		Map<String, String> errors = new HashMap<String, String>();
		model.addAttribute("errors", errors);
		if ("select".equals(bookingion)) {
			if (towerNo == null || towerNo.length() == 0) {
				errors.put("towerNo", "塔位不可空白");
			}

			int towerno = 0;
			if (towerNo != null && towerNo.trim().length() != 0) {
				try {
					towerno = Integer.parseInt(towerNo);

				} catch (NumberFormatException e) {
					e.printStackTrace();
					errors.put("towerNo", "塔位只接受數字");
				}
			}
			java.util.Date reservedate = null;
			if (reserveDate != null && reserveDate.trim().length() != 0) {
				try {
					reservedate = sFormat.parse(reserveDate);
				} catch (java.text.ParseException e) {
					e.printStackTrace();
				}
				
			}
			if (errors != null && !errors.isEmpty()) {
				model.addAttribute("errors", errors);
				return "/front-end/booking/inquirybooking.jsp";
			}

			else {
				List<BookingVO> result= service.selectAll(towerno);
				System.out.println(result);
				if(result.size()==0) {
					errors.put("result", "你沒有這個塔位");
					return"/front-end/booking/inquirybooking.jsp";
				}
				model.addAttribute("towerNo", towerNo);
				model.addAttribute("select", result);
				return ("/front-end/booking/showinquirybooking.jsp");
			}
		}
		return "/front-end/booking/inquirybooking.jsp";
		}
	}
}
