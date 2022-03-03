package web.cart.dao.impl;

import java.util.*;

import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import web.cart.dao.CartDAOInterface;
import web.cart.entity.CartVO;
import web.product.entity.ProductVO;

@Repository
public class CartDAO  implements CartDAOInterface{
	
	@PersistenceContext
	private Session session;

//	public static void main(String[] args) {
//		SessionFactory sessFactory = HibernateUtil.getSessionfactory();
//		Session session = sessFactory.getCurrentSession();
//		Transaction transaction = session.beginTransaction();
//		
//		CartDAOInterface cartDAOInterface = new CartDAO();
//		CartVO cartVo = new CartVO();
//		
//		cartVo.setProdNo(3);
//		cartVo.setUserNo(1);
//		cartVo.setProdAmount(3);
//		cartVo.setProdPrice(200);
//		CartVO test1 = cartDAOInterface.add(cartVo);
////		test1.setLastUpdateDatetime(LocalDateTime.now());
//		System.out.println("test1=" + test1);
//		
//		transaction.commit();
//		session.close();
//		sessFactory.close();
//	}
	
	// 加入右上角購物車
	@Override
	public CartVO add(CartVO vo) {
		if (vo != null) {
			session.save(vo);
			return vo;
		}
		return null;
	}
	
	@Override
	public CartVO selectByUser(Integer userNo) {
		String hql ="FROM CartVO where userNo =: userNo";
		CartVO temp = session.createQuery(hql,CartVO.class)
				.setParameter("userNo", userNo).uniqueResult();
		return temp;
	}
	
	@Override
	public CartVO selectByProdNo(Integer prodNo) {
		String hql ="FROM CartVO where prodNo =: prodNo";
		CartVO temp = session.createQuery(hql,CartVO.class)
				.setParameter("prodNo", prodNo).uniqueResult();
		return temp;
	}
	
	@Override
	public List<CartVO> selectAll() {
		return session.createQuery("FROM CartVO", CartVO.class).list();
	}

	@Override
	public CartVO update(CartVO vo) {
		return null;
	}

	@Override
	public boolean delete(Integer cartNo) {
		return false;
	}

	

	

	

//	@Override
//	public Vector<CartVO> add(CartVO vo) {
//		if (vo != null) {
//			return (Vector<CartVO>) this.getSession().save(vo);
//		}
//		return null;
//	}
	
//	@Override
//	public List<CartVO> addList(CartVO vo) {
//		if (vo != null) {
//			return (List<CartVO>) this.getSession().save(vo);
//		}
//		return null;
//	}


	
}
