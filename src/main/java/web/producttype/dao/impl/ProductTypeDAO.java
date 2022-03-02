package web.producttype.dao.impl;

import java.util.List;

import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import web.producttype.dao.ProductTypeDAOInterface;
import web.producttype.entity.ProductTypeVO;


@Repository
public class ProductTypeDAO implements ProductTypeDAOInterface {

	@PersistenceContext
	private Session session;

	// 用商品類別查詢商品
	@Override
	public List<ProductTypeVO> select(Integer productTypeCode) {
		String hql = "FROM ProductTypeVO where prodTypeCode =:prodTypeCode";
		List<ProductTypeVO> query = session.createQuery(hql, ProductTypeVO.class)
				.setParameter("prodTypeCode", productTypeCode).list();
		if (productTypeCode != null) {
			return query;
		}
		return null;
	}

	// 查詢所有商品分類
	@Override
	public List<ProductTypeVO> selectAll() {
		return session.createQuery("FROM ProductTypeVO", ProductTypeVO.class).list();
	}
	

	// 新增商品類別
	@Override
	public ProductTypeVO add(ProductTypeVO vo) {
		if (vo != null) {
//			ProductTypeVO temp = session.get(ProductTypeVO.class, vo.getProdTypeCode());
//			if (temp == null) {
			session.save(vo);
			return vo;
//			}
		}
		return null;
	}

	// 修改商品類別
	@Override
	public ProductTypeVO update(ProductTypeVO vo) {
		if (vo != null && vo.getProdTypeCode() != null) {
			ProductTypeVO temp = session.get(ProductTypeVO.class, vo.getProdTypeCode());
			if (temp != null) {
				temp.setProdTypeCode(vo.getProdTypeCode());
				temp.setProdTypeDesc(vo.getProdTypeDesc());
				return temp;
			}
		}
		return null;
	}

}
