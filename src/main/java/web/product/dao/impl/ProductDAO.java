package web.product.dao.impl;

<<<<<<< HEAD
=======
import java.util.ArrayList;
>>>>>>> Michael
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import web.product.dao.ProductDAOInterface;
import web.product.entity.ProductVO;

@Repository
public class ProductDAO implements ProductDAOInterface {

	@PersistenceContext
	private Session session;
<<<<<<< HEAD
=======
	
	
	
	
	public List<ProductVO> getProductByCompNo(Integer compNo){
		String hql = "From ProductVO where compNo = :compNo";
		List<ProductVO> result = session.createQuery(hql, ProductVO.class).setParameter("compNo", compNo).list();
		return result;
		
	}
>>>>>>> Michael

	// 用prodNo找商品照片
	@Override
	public List<ProductVO> getProductsPicByProdNo(Integer prodNo) {
		String hql = "FROM ProductVO WHERE prodNo = :prodNo";
		return session.createQuery(hql, ProductVO.class).setParameter("prodNo", prodNo).getResultList();
	}

	// 用商品編號查詢才不會重複
	public ProductVO selectByProdNo(Integer prodNo) {
		return session.get(ProductVO.class, prodNo);
	}

	// 用商品名稱精準查詢
	@Override
	public ProductVO selectByName(String prodName) {
		String hql = "From ProductVO where prodName = :prodName";
		ProductVO temp = session.createQuery(hql, ProductVO.class).setParameter("prodName", prodName).uniqueResult();
		return temp;
	}

	// 查詢全部商品
	@Override
	public List<ProductVO> selectAll() {
		return session.createQuery("FROM ProductVO", ProductVO.class).list();
	}

	// 查詢商品價格區間
	@Override
	public List<ProductVO> selectByPrice(Integer priceMin, Integer priceMax) {
		String hql = "FROM ProductVO where prodPrice between :priceMin and :priceMax";
		return session.createQuery(hql, ProductVO.class).setParameter("priceMin", priceMin)
				.setParameter("priceMax", priceMax).list();
	}

	// 取得商品最高價和最低價
	public Map<String, Integer> getPrice() {
		String hql = "SELECT Min(prodPrice), Max(prodPrice) FROM ProductVO ";
		Object[] result = session.createQuery(hql, Object[].class).uniqueResult();
		Map<String, Integer> map = new HashMap<>();
		map.put("min", (Integer) result[0]);
		map.put("max", (Integer) result[1]);
		return map;
	}

	// 用商品名稱模糊查詢
	@Override
	public List<ProductVO> selectByNameLike(String prodName) {
		String hql = "FROM ProductVO where prodName like :prodName";
		List<ProductVO> prodNameList = session.createQuery(hql, ProductVO.class)
				.setParameter("prodName", "%" + prodName + "%").list();
		if (prodName != null) {
			return prodNameList;
		}
		return null;
	}

	// 用分類查詢商品
	@Override
	public List<ProductVO> selectByProdType(Integer prodTypeCode) {
		String hql = "FROM ProductVO where prodTypeCode =:abc";
		List<ProductVO> prodTypeList = session.createQuery(hql, ProductVO.class).setParameter("abc", prodTypeCode)
				.list();
		return prodTypeList;
	}

	public List<ProductVO> selectProdTypeDesc(Integer prodTypeCode) {
		String hql = "SELECT prodTypeDesc FROM ProductVO as a, "
				+ "ProductTypeVO as b where a.prodTypeCode = b.prodTypeCode";
		List<ProductVO> result = session.createQuery(hql, ProductVO.class).list();
		return result;
	}

	// 新增商品
	@Override
	public ProductVO add(ProductVO vo) {
		if (vo != null) {
//			ProductVO temp = session.get(ProductVO.class, vo.getProdNo());
//			System.out.println(temp);
//			if (temp == null) {
			session.save(vo);
			return vo;
		}
//		}
		return null;
	}
<<<<<<< HEAD
=======
	
	
	public boolean updateProdStatus(List<Integer> productNumbers) {
		for(int i = 0 ; i < productNumbers.size() ; i++) {
			ProductVO pv = session.get(ProductVO.class,productNumbers.indexOf(i));
			pv.setProdVerify("1");
		}return true;
		
		
	}
>>>>>>> Michael

	// 修改商品
	@Override
	public ProductVO update(ProductVO vo) {
		if (vo != null && vo.getProdNo() != null) {
			ProductVO temp = session.get(ProductVO.class, vo.getProdNo());
			if (temp != null) {
//				return (ProductVO) session.merge(vo);	
				temp.setProdNo(vo.getProdNo());
				temp.setCompNo(vo.getCompNo());
				temp.setProdTypeCode(vo.getProdTypeCode());
				temp.setProdName(vo.getProdName());
				temp.setProdDesc(vo.getProdDesc());
				temp.setProdPrice(vo.getProdPrice());
				temp.setProdStock(vo.getProdStock());
				temp.setProdVerify(vo.getProdVerify());
				temp.setProdImg1(vo.getProdImg1());
				temp.setProdImg2(vo.getProdImg2());
				temp.setProdImg3(vo.getProdImg3());
//				temp.setStartDate(vo.getStartDate());
//				temp.setEndDate(vo.getEndDate());
				session.save(temp);
				return temp;
			}
		}
		return null;
	}

	// 刪除商品
	@Override
	public boolean delete(Integer prodNo) {
		if (prodNo != null) {
			ProductVO temp = session.get(ProductVO.class, prodNo);
			if (temp != null) {
				session.delete(temp);
				return true;
			}
		}
		return false;
	}

//	@Override
//	public ProductVO update(Integer prodNo, Integer compNo, Integer prodTypeCode, String prodName, String prodDesc,
//			Integer prodPrice, Integer prodStock, String prodVerify, byte[] prodImg1, byte[] prodImg2, byte[] prodImg3,
//			Date startDate, Date endDate) {
//		if (prodNo != null) {
//			ProductVO temp = session.get(ProductVO.class, prodNo);
//			if (temp != null) {
//				temp.setProdNo(prodNo);
//				temp.setCompNo(compNo);
//				temp.setProdTypeCode(prodTypeCode);
//				temp.setProdName(prodName);
//				temp.setProdDesc(prodDesc);
//				temp.setProdPrice(prodPrice);
//				temp.setProdStock(prodStock);
//				temp.setProdVerify(prodVerify);
//				temp.setProdImg1(prodImg1);
//				temp.setProdImg2(prodImg2);
//				temp.setProdImg3(prodImg3);
//				temp.setStartDate(startDate);
//				temp.setEndDate(endDate);
//				return temp;
//			}
//		}
//		return null;
//		}

	// 計算商品分類筆數
//		@Override
//		public Integer countByProdType(Integer prodTypeCode) {
//			String hql = "FROM ProductVO where prodTypeCode =:abc";
//			int count = session.createQuery(hql, ProductVO.class).setParameter("abc", prodTypeCode).list().size();
//			return count;		
//		}

}
