package web.cart.service;

import java.util.List;

import web.cart.entity.CartVO;

public interface CartServiceInterface {
	public abstract CartVO addToCart(CartVO vo);
	public abstract CartVO selectByProdNo(Integer prodNo);
	public abstract List<CartVO> selectAllCart();

}
