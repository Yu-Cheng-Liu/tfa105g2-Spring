package web.producttype.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.producttype.dao.impl.ProductTypeDAO;
import web.producttype.entity.ProductTypeVO;
import web.producttype.service.ProductTypeServiceInterface;

@Service
@Transactional
public class ProductTypeService implements ProductTypeServiceInterface{
	
	@Autowired
	private ProductTypeDAO productTypeDAO;


	// 搜尋商品類別
	public List<ProductTypeVO> select(Integer productTypeCode) {
		List<ProductTypeVO> result = null;
		if (productTypeCode != null) {
			List<ProductTypeVO> temp = productTypeDAO.select(productTypeCode);
			if (temp != null) {
				result = temp;
			}
		}
		return result;
	}
	
	public List<ProductTypeVO> selectAll(){
		return productTypeDAO.selectAll();
	}

	
	// 新增：所有欄位都不可為null(前端寫警告)
	public ProductTypeVO add(ProductTypeVO vo) {
		ProductTypeVO result = null;
		if(vo!=null) {
			result = productTypeDAO.add(vo);
		}
		return result;
	}
	
	
	// 修改：
	public ProductTypeVO update(ProductTypeVO vo) {
		ProductTypeVO result = null;
		if(vo!=null && vo.getProdTypeCode()!=null) {
			result = productTypeDAO.update(vo);
		}
		return result;
	}
}
