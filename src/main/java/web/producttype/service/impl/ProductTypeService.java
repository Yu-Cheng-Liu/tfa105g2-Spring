package web.producttype.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import web.producttype.dao.ProductTypeDAOInterface;
import web.producttype.entity.ProductTypeVO;
import web.producttype.service.ProductTypeServiceInterface;


@Service
@Transactional
public class ProductTypeService implements ProductTypeServiceInterface {
	
	@Autowired
	private ProductTypeDAOInterface productTypeDAOInterface;


	// 搜尋商品類別
	public List<ProductTypeVO> select(Integer productTypeCode) {
		List<ProductTypeVO> result = null;
		if (productTypeCode != null) {
			List<ProductTypeVO> temp = productTypeDAOInterface.select(productTypeCode);
			if (temp != null) {
				result = temp;
			}
		}
		return result;
	}
	
	public List<ProductTypeVO> selectAll(){
		return productTypeDAOInterface.selectAll();
	}

	
	// 新增：所有欄位都不可為null(前端寫警告)
	public ProductTypeVO add(ProductTypeVO vo) {
		ProductTypeVO result = null;
		if(vo!=null) {
			result = productTypeDAOInterface.add(vo);
		}
		return result;
	}
	
	
	// 修改：
	public ProductTypeVO update(ProductTypeVO vo) {
		ProductTypeVO result = null;
		if(vo!=null && vo.getProdTypeCode()!=null) {
			result = productTypeDAOInterface.update(vo);
		}
		return result;
	}
}
