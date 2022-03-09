package web.orderdetail.service;

import java.util.List;
import java.util.Map;

import web.memberorder.entity.OrderViewVO;
import web.orderdetail.entity.OrderDetail;

public interface OrderDetailServiceInterface {
	
	public abstract Map getErrors();
	
	public abstract OrderDetail getSingleOrder(Integer orderNo , Integer prodNo );
	
	public abstract List<OrderDetail> selectWithCompNo(Integer compNo) ;
	
	public abstract List <OrderDetail> selectByProdNo(Integer prodNo);
	
	public abstract OrderDetail addOrderDetail(OrderDetail od);
	
	public abstract List<OrderViewVO> selectByUserNo(Integer userNo);

}
