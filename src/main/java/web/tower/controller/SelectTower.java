package web.tower.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import web.tower.entity.TowerVO;
import web.tower.service.TowerService;

@Controller
public class SelectTower {
	@Autowired
	private TowerService service;
	@ResponseBody
	@RequestMapping(value="/backstage/SelectAllTowerData.controller")
	
	public String TowerSelectAll(HttpSession session) {
		System.out.println(2);
		List<TowerVO> list=service.selectAll();
		Gson gson=new Gson();
		session.setAttribute("TowerVO", list);
		
		return gson.toJson(list);
			}
	}
	