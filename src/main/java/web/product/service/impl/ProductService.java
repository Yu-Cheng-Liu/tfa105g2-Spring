package web.product.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import web.product.dao.ProductDAOInterface;
import web.product.entity.ProductVO;
import web.product.service.ProductServiceInterface;

@Service
@Transactional
public class ProductService implements ProductServiceInterface {

	@Autowired
	private ProductDAOInterface productDAOInterface;

	// 用prodNo找商品照片
//	public ProductVO getProductPicByProdNo(Integer prodNo) {
//		return productDAO.getProductsPicByProdNo(prodNo);
//	}

	public List<ProductVO> getProductsPicByProdNo(Integer prodNo) {
		return productDAOInterface.getProductsPicByProdNo(prodNo);
	}

	public ProductVO selectByProdNo(Integer prodNo) {
		return productDAOInterface.selectByProdNo(prodNo);
	}
	
	
	
	public List<ProductVO> selectProdByCompNo(Integer CompNo){
		if(CompNo!=null) {
			return productDAOInterface.getProductByCompNo(CompNo);
		}else {
			return null;
		}
	}

	// select一種商品就不用list，select多種商品就要用list包起來。而且單選和全選要分開設定
	public List<ProductVO> selectByNameLike(String prodName) {
		List<ProductVO> result = null;
		if (prodName != null) {
			List<ProductVO> temp = productDAOInterface.selectByNameLike(prodName);
			if (temp != null) {
				result = temp;
			}
		}
		return result;
	}

	public ProductVO selectByName(String prodName) {
		return productDAOInterface.selectByName(prodName);
	}

	// 查詢商品價格區間
	public List<ProductVO> selectByPrice(Integer priceMin, Integer priceMax) {
		return productDAOInterface.selectByPrice(priceMin, priceMax);
	}

	public List<ProductVO> selectAll() {
		return productDAOInterface.selectAll();

	}

	public Map<String, Integer> getPrice() {
		return productDAOInterface.getPrice();
	}

	// 增加用商品類別搜尋，要關聯到商品類別定義檔
	public List<ProductVO> selectByProdType(Integer prodTypeCode) {
		List<ProductVO> result = null;
		if (prodTypeCode != null) {
			List<ProductVO> temp = productDAOInterface.selectByProdType(prodTypeCode);
			if (temp != null) {
				result = temp;
			}
		}
		return result;
	}

//	public List<ProductVO> selectProdTypeDesc() {
//		return productDAO.selectProdTypeDesc();
//	}

	// 計算商品分類筆數
	public Integer countByProdType(Integer prodTypeCode) {
		return productDAOInterface.selectByProdType(prodTypeCode).size();
	}

	// 新增只有商品說明和圖片二和圖片三不是必填，其他都要填寫，否則要跳警告(前端寫警告)
	public ProductVO add(ProductVO vo) {
		ProductVO result = null;
		// 要確認這邊的判斷是否加入其他欄位不能等於null
		if (vo != null) {
			result = productDAOInterface.add(vo);
		}

		return result;
	}

	// 修改不能重設商品編號，因為是自動編號
	public ProductVO update(ProductVO vo) {
		ProductVO result = null;
		if (vo != null && vo.getProdNo() != null) {
			// ??? prodNo是自動編號，也要getProdNo嗎？ compNo是fk，也要getCompNo嗎？
			// ??? 以下寫法為什麼報錯？
//			result = productDAO.update(vo.getProdNo(), vo.getCompNo(), vo.getProdTypeCode(), 
//					vo.getProdName(), vo.getProdDesc(), vo.getProdPrice(), vo.getProdStock(),
//					vo.getProdVerify(), vo.getProdImg1(), vo.getProdImg2(), vo.getProdImg3(),
//					vo.getStartDate(), vo.getEndDate());

			result = productDAOInterface.update(vo);
		}
		return result;
	}

	public boolean delete(Integer prodNo) {
		boolean result = false;
		if (prodNo != null) {
			result = productDAOInterface.delete(prodNo);
		}
		return result;
	}

	@Override
	public List<ProductVO> selectProdTypeDesc(Integer prodTypeCode) {
		return null;
	}

}
