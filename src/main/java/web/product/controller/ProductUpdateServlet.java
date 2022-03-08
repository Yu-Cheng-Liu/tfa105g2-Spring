package web.product.controller;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import web.product.entity.ProductVO;
import web.product.service.ProductServiceInterface;


@Controller
public class ProductUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private ProductServiceInterface productService;
	
	@RequestMapping(value = "/front-end/product/ProductUpdateServlet.controller", method = {RequestMethod.POST})
	public String prodUpdate(Integer prodNo,Integer prodTypeNo ,String prodName, Integer prodPrice, Integer prodStock, Integer prodTypeCode,
			String prodDesc, Model model, HttpServletRequest req , HttpSession session,@RequestParam("prodImg") MultipartFile[] prodImg) throws IOException {
		
		
		Map<String, String> errorMsgs = new LinkedHashMap<String, String>();
		model.addAttribute("errorMsgs",errorMsgs);
		
		
//		productService.selectByProdNo(prodNo);
		prodNo = (Integer) session.getAttribute("prodNo");
//		prodTypeNo = (Integer) session.getAttribute("prodTypeNo");
		prodName = (String) session.getAttribute(prodName);
		prodPrice = (Integer) session.getAttribute("prodPrice");
		prodStock = (Integer) session.getAttribute("prodStock");
		
		

		// 商品名稱
		String prodNameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{1,15}$";
		if (prodName == null || prodName.trim().length() == 0) {
			errorMsgs.put("prodName", "請輸入商品名稱！");
			model.addAttribute("errorMsgs", errorMsgs);
		} else if (!prodName.trim().matches(prodNameReg)) {
			errorMsgs.put("prodName", "商品名稱只能是中文、英文、數字和_，且長度需在1到15之間");
			model.addAttribute("errorMsgs", errorMsgs);
		}

		// 商品價格，不能為空白和0
		if (prodPrice == null || prodPrice == 0) {
			errorMsgs.put("prodPrice", "請填寫正確價格，且價錢不得為0！");
			model.addAttribute("errorMsgs", errorMsgs);
		}

		// 商品庫存，不能空白
		if (prodStock == null || prodStock == 0) {
			errorMsgs.put("prodStock", "請填寫正確庫存，且庫存不得為0！");
			model.addAttribute("errorMsgs", errorMsgs);
		}

		// 商品類別，不能空白
		if (prodTypeCode == 0) {
			errorMsgs.put("prodTypeCode", "請選擇商品類別！");
			model.addAttribute("errorMsgs", errorMsgs);
		}

		// 上傳圖片，Img1不能為null
		byte[] prodImg1 = null;
//						try {
		prodImg1 = (byte[]) model.getAttribute("prodImg1");
		if (prodImg[0].getBytes().length == 0) {
			errorMsgs.put("prodImg1", "請上傳一張圖片！");
			model.addAttribute("errorMsgs", errorMsgs);
		} else {
			prodImg1 = prodImg[0].getBytes();
//							}catch (Exception e) {
//							e.printStackTrace();
		}

		byte[] prodImg2 = null;
		prodImg2 = (byte[]) model.getAttribute("prodImg2");
		if (prodImg[1].getBytes().length != 0) {
			prodImg2 = prodImg[1].getBytes();
		}

		byte[] prodImg3 = null;
		prodImg3 = (byte[]) model.getAttribute("prodImg3");
		if (prodImg[2].getBytes().length != 0) {
			prodImg3 = prodImg[2].getBytes();
		}


		ProductVO prodVO = new ProductVO();
		prodVO.setProdNo(prodNo);
//		prodVO.setCompNo(1);
		prodVO.setProdName(prodName);
		prodVO.setProdDesc(prodDesc);
		prodVO.setProdPrice(prodPrice);
		prodVO.setProdStock(prodStock);
		prodVO.setProdTypeCode(prodTypeCode);
		prodVO.setProdImg1(prodImg1);
		prodVO.setProdImg2(prodImg2);
		prodVO.setProdImg3(prodImg3);
		prodVO.setProdVerify("待審核");

		if (!errorMsgs.isEmpty()) {
			model.addAttribute("prodName", prodName);
			model.addAttribute("prodDesc", prodDesc);
			model.addAttribute("prodPrice", prodPrice);
			model.addAttribute("prodStock", prodStock);
			model.addAttribute("errorMsgs", errorMsgs);
			String path = req.getContextPath();
				
			
			session.setAttribute("indexHamburger", "<div class=\"single-settings-block\">\r\n"
					+ "                                                <h4 class=\"title\">廠商專區 </h4>\r\n"
					+ "                                                <ul>\r\n"
					+ "                                                    <li><a href="
					+ path
					+ "/front-end/compData/comp-index.jsp>廠商用戶中心</a></li>\r\n"
					+ "                                                    \r\n"
					+ "                                                </ul>\r\n"
					+ "                                            </div>");
			
			
			return "/front-end/compData/comp-index.jsp";
		}
		
		
		String path = req.getContextPath();
		
		
		session.setAttribute("indexHamburger", "<div class=\"single-settings-block\">\r\n"
				+ "                                                <h4 class=\"title\">廠商專區 </h4>\r\n"
				+ "                                                <ul>\r\n"
				+ "                                                    <li><a href="
				+ path
				+ "/front-end/compData/comp-index.jsp>廠商用戶中心</a></li>\r\n"
				+ "                                                    \r\n"
				+ "                                                </ul>\r\n"
				+ "                                            </div>");
		
		
		prodVO = productService.update(prodVO);
		Integer compNo = (Integer) session.getAttribute("compNo");
		
		List <ProductVO> list = productService.selectProdByCompNo(compNo);
		model.addAttribute("prods", list);
		
		String classes = "show active";
		model.addAttribute("classes7",classes);
		String active = "class=\"active\"";
		model.addAttribute("attrs6", active);
		return "/front-end/compData/comp-indexjsp";
		
		
	}
}
