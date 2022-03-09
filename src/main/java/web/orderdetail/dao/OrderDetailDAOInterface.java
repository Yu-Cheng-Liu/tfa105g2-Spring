package web.orderdetail.dao;

import java.util.List;

import web.memberorder.entity.OrderViewVO;
import web.orderdetail.entity.OrderDetail;


public interface OrderDetailDAOInterface {
		
		public abstract OrderDetail select(Integer orderNo , Integer prodNo );
		
		public abstract List selectByCompNo(Integer compNo);
		
		public abstract List selectByProdNo(Integer prodNo);
		
		public abstract List<OrderDetail> selectATon();
		
		public abstract OrderDetail insert(OrderDetail orderDetail);
		
		public abstract boolean delete(Integer orderNo);
	 
		public abstract boolean update(OrderDetail orderDetail);
		
		public abstract List<OrderViewVO> selectByUserNo(Integer userNo);
		
	
}
