package web.compdata.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import web.compdata.dao.CompDataDAOInterface;
import web.compdata.entity.CompData;

@Controller
public class compSelectAllForBackstage {
	
	@Autowired
	private CompDataDAOInterface dao;

	
	@ResponseBody
	@PostMapping(value = "/backstage/compSelectAll.controller")
	public String compSelectAll() {
		System.out.println(1);
		Gson gson = new Gson();
		List<CompData> list = dao.selectATon();
		return gson.toJson(list);
	}
	
}
