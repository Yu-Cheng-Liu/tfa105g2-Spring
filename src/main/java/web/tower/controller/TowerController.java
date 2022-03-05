package web.tower.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import web.tower.entity.TowerVO;
import web.tower.service.TowerService;

@Controller
public class TowerController {
	@Autowired
	private TowerService service;

	@ResponseBody
	@PostMapping(value = "/backstage/tower.controller")
	public String tower(@RequestBody(required = false) TowerVO towerVO, HttpSession session) {
		Gson gson = new Gson();
		towerVO = service.insert(towerVO);
		System.out.println(towerVO);
		return gson.toJson(towerVO).toString();
	}
}
