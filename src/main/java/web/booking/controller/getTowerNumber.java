package web.booking.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import web.memberdata.entity.MemberDataVO;
import web.tower.entity.TowerVO;
import web.tower.service.TowerService;

@Controller
public class getTowerNumber {

	@Autowired
	private TowerService service;

	@ResponseBody
	@PostMapping(value = "/front-end/booking/getTowerNumber.controller")
	public String getTower(HttpSession session) {

		MemberDataVO mv = (MemberDataVO) session.getAttribute("user");
		Integer userNo = mv.getUserno();
		List<TowerVO> list = service.selectAllByUserNo(userNo);

		Gson gson = new Gson();
		return gson.toJson(list);
	}

}