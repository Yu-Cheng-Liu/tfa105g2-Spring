package web.tower.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.tower.entity.TowerVO;
import web.tower.service.TowerService;

@Controller
public class TowerController {
	@Autowired
	private TowerService service;
	@RequestMapping (value="/front-end/tower/tower.controller", method = {RequestMethod.GET})
	public String tower(String towerNo,String userNo,String deadName,Model model,HttpSession session) {
		
		Map<String,String>errors=new HashMap<String,String>();
		model.addAttribute("errors", errors);
		if("".equals(towerNo)) {
			errors.put("towerNo", "塔位不可空白");
			model.addAttribute("errors", errors);
		}
	if(errors.size()!=0) {
		model.addAttribute("towerNo",towerNo);
		model.addAttribute("userNo",userNo);
		model.addAttribute("deadName", deadName);
		model.addAttribute("errors", errors);
		return"";
	}else {
		TowerVO bean=new TowerVO();
		Integer TowerNo=Integer.parseInt(towerNo);
		Integer UserNo=Integer.parseInt(userNo);
		bean.setTowerNo(TowerNo);
		bean.setUserNo(UserNo);
		bean.setDeadName(deadName);
		if(!"".equals(TowerNo)) {
			service.insert(bean);
			session.setAttribute("towerNo",towerNo);
			session.setAttribute("userNo", UserNo);
			session.setAttribute("deadName", deadName);
			return"";
		}else {
			System.out.println("資料錯誤");
		}
		
	}
	return "";
	}
}
