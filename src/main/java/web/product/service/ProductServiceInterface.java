package web.product.service;

import java.util.List;

import web.product.entity.ProductVO;

public interface ProductServiceInterface {
	public abstract List<ProductVO> getProductsPicByProdNo(Integer prodNo);
	public abstract ProductVO selectByProdNo(Integer prodNo);
	public abstract List<ProductVO> selectByNameLike(String prodName);
	public abstract ProductVO selectByName(String prodName);
	public abstract List<ProductVO> selectAll();
	public abstract List<ProductVO> selectByProdType(Integer prodTypeCode);
	public abstract List<ProductVO> selectProdTypeDesc(Integer prodTypeCode);
	public abstract List<ProductVO> selectByPrice(Integer priceMin, Integer priceMax);
	public abstract ProductVO add(ProductVO vo);
	public abstract ProductVO update(ProductVO vo);
//	public abstract Integer countByProdType(Integer prodTypeCode);
//	public abstract ProductVO update(Integer prodNo, Integer compNo, Integer prodTypeCode, String prodName, String prodDesc,
//			Integer prodPrice, Integer prodStock, String prodVerify, byte[] prodImg1, byte[] prodImg2, byte[] prodImg3,
//			Date startDate, Date endDate);
	public abstract boolean delete(Integer prodNo);

	public List<ProductVO> selectProdByCompNo(Integer CompNo);

}
