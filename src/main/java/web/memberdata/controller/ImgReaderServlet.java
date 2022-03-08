package web.memberdata.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.memberdata.entity.MemberDataVO;
import web.memberdata.service.MemberDataServiceInterface;


@Controller
@MultipartConfig
public class ImgReaderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private MemberDataServiceInterface service;
	
	@RequestMapping(path = { "/readerimg.controller" }, method = { RequestMethod.GET })
	public void register(Model model,String userno, HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException {

	
		res.setContentType("image/gif");
		ServletOutputStream out = res.getOutputStream();

		try {
			Integer userno1 = Integer.valueOf(req.getParameter("userno"));
			MemberDataVO memberDataVO = service.selectByUserNo(userno1);
			
			byte[] buf = memberDataVO.getPicture();
			System.out.println(buf);
			out.write(buf);
			out.close();
		} catch (Exception e) {
			InputStream in = req.getServletContext().getResourceAsStream("/assets/img/logo.jpg");
			byte[] b = new byte[in.available()];
			in.read(b);
			out.write(b);
			in.close();
		}
	}

}
