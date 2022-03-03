package web.cart.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import web.cart.dao.CartDAOInterface;
import web.cart.entity.CartVO;
import web.cart.service.CartServiceInterface;

@Service
@Transactional
public class CartService implements CartServiceInterface{
	
	@Autowired
	private CartDAOInterface cartDaoInterface;
	
//	public static void main(String[] args) {
//		SessionFactory sessFactory = HibernateUtil.getSessionfactory();
//		Session session = sessFactory.getCurrentSession();
//		Transaction transaction = session.beginTransaction();
//		
//		CartDAOInterface cartDAOInterface = new CartDAO();
//		CartService cartService = new CartService(new CartDAO());
//		
//		CartVO cartVo = new CartVO();
//		cartVo.setProdNo(10);
//		cartVo.setUserNo(null);
//		cartVo.setProdAmount(3);
//		cartVo.setProdPrice(200);
//		CartVO test1 = cartService.addToCart(cartVo);
////		test1.setLastUpdateDatetime(LocalDateTime.now());
//		System.out.println("test1=" + test1);
//		
//		transaction.commit();
//		session.close();
//		sessFactory.close();
//		
//	}
	
	public CartVO addToCart(CartVO vo) {
		CartVO result = null;
		if (vo != null) {
			result = cartDaoInterface.add(vo);
		}
		return result;
	}
	
	public CartVO selectByProdNo(Integer prodNo) {
		return cartDaoInterface.selectByProdNo(prodNo);
	}

	
	

}
