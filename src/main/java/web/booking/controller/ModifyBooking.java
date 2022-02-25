package web.booking.controller;

import java.text.DateFormat;
import java.text.ParseException;
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

@Controller
public class ModifyBooking {
   @Autowired
	private BookingService service;
   @RequestMapping(value="/front-end/booking/modifybooking.controller",method= {RequestMethod.GET})
    public String modifybooking(String towerNo,String bookingNo,String modifybookingion,String remark,String reserveDate,Model model,HttpSession session) {
	   
	   Map<String,String> errors=new HashMap<String,String>();
		DateFormat sFormat=new SimpleDateFormat("yyyy-MM-dd");
		if("update".equals(modifybookingion)) {
			if(reserveDate==null||reserveDate.trim().length()==0) {
			    errors.put("reserveDate","請選擇預約時間");
			
				return"/front-end/booking/showinquirybooking.jsp";}
				
				else {
					java.util.Date RreserveDate = null;
					int bookingno=0;
					int towerno=0;
					try {
						bookingno=Integer.parseInt(bookingNo);
						towerno=Integer.parseInt(towerNo);
					BookingVO bean = new BookingVO();
					RreserveDate = sFormat.parse(reserveDate);
					bean.setBookingNo(bookingno);

					bean.setReserveDate(RreserveDate);
				
					bean.setRemark(remark);

					BookingVO bv = service.update(bean);
					
					if (service.update(bean)!=null) {					
					
						model.addAttribute("select", bv);
						return"/front-end/booking/showModifybooking.jsp";
						
						
					}else {
						List<BookingVO> result= service.selectAll(towerno);
						model.addAttribute("select",bv);
						return"/front-end/booking/showinquirybooking.jsp";						
					}
				}catch(ParseException e) {
					e.printStackTrace();
					}
				}
			
			}
		return"/front-end/booking/showinquirybooking.jsp";
		}
   }

			
	

