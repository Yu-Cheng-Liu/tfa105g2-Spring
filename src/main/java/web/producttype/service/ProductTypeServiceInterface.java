package web.producttype.service;

import java.util.List;

import web.producttype.entity.ProductTypeVO;


public interface ProductTypeServiceInterface {
	public abstract List<ProductTypeVO> select(Integer productTypeCode);
	public abstract List<ProductTypeVO> selectAll();
	public abstract ProductTypeVO add(ProductTypeVO vo);
	public abstract ProductTypeVO update(ProductTypeVO vo);

}
