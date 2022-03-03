package web.cart.service;

import web.cart.entity.CartVO;

public interface CartServiceInterface {
	public abstract CartVO addToCart(CartVO vo);
	public abstract CartVO selectByProdNo(Integer prodNo);

}
