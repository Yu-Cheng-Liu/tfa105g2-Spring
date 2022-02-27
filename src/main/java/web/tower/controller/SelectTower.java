package web.tower.controller;

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
import web.tower.entity.TowerVO;
import web.tower.service.TowerService;

@Controller
public class SelectTower {
	@Autowired
	private TowerService service;
	@RequestMapping(value="/front-end/tower/selecttower.controller",method= {RequestMethod.GET})
	public String selecttower(String towerion,String towerNo,String userNo,String deadName,Model model,HttpSession session) {
		Map<String,String>errors=new HashMap<String,String>();
		model.addAttribute("errors", errors);
		if("select".equals(towerion)) {
			if (towerNo == null || towerNo.length() == 0) {
				errors.put("towerNo", "塔位不可空白");
			}
			int towerno=0;
			if(towerNo != null && towerNo.trim().length() != 0) {
				try {
					towerno = Integer.parseInt(towerNo);

				} catch (NumberFormatException e) {
					e.printStackTrace();
					errors.put("towerNo", "塔位只接受數字");
				}
			}
			if (errors != null && !errors.isEmpty()) {
				return "";
			}

			else {
				List<TowerVO> result= service.select(null);
				model.addAttribute("towerNo", towerNo);
				model.addAttribute("select", result);
				return "";
		}
	
	}
		return"";
	}
	}
