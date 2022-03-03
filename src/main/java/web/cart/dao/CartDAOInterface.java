package web.cart.dao;

import java.util.*;

import web.cart.entity.CartVO;

public interface CartDAOInterface {
	
	public abstract CartVO add(CartVO vo);
	public abstract CartVO selectByUser(Integer userNo);
	public abstract CartVO selectByProdNo(Integer prodNo);
//	public abstract Vector<CartVO> add(CartVO vo);
//	public abstract List<CartVO> addList(CartVO vo);
	public abstract CartVO update(CartVO vo);
	public abstract boolean delete(Integer cartNo);
}
