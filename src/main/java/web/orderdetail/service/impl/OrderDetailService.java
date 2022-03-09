package web.orderdetail.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import web.memberorder.entity.OrderViewVO;
import web.orderdetail.dao.OrderDetailDAOInterface;
import web.orderdetail.entity.OrderDetail;
import web.orderdetail.service.OrderDetailServiceInterface;




@Service
@Transactional
public class OrderDetailService implements OrderDetailServiceInterface {
	
	@Autowired
	public OrderDetailDAOInterface oddaoi;
	
	
	private Map<String , String> errors = new HashMap<String, String>();
	
	
	public Map getErrors() {
		return errors;
	}
	
//	public static void main(String[] args) {
//		SessionFactory sf = HibernateUtil.getSessionfactory();
//		Session session = sf.getCurrentSession();
//		Transaction trx = session.beginTransaction();
//
//		OrderDetailService ods = new OrderDetailService(new OrderDetailDAO(sf));
//		
////		List<OrderDetail> od = ods.selectWithCompNo(797);
//		
//		OrderDetail od = new OrderDetail();
//		od.setCompNO(777);
//		od.setOrderNo(8889);
//		od.setProdAmount(1);
////		od.setProdNo(567);
//		od.setProdPrice(890);
//		
//		List<OrderDetail> od1 = ods.selectWithCompNo(777);
//		
//		
//		System.out.println(od1);
////		for(int i = 0 ; i< od.size(); i++) {
////			System.out.println(od);
////		}
//		
//		
//		trx.commit();
//		session.close();
//		sf.close();
//	}
//	
//===================================================Get Single Order===========================================================
	
	public OrderDetail getSingleOrder(Integer orderNo , Integer prodNo ) {
		
		if(orderNo == null) {
			errors.put("orderNo", "訂單編號不可空白");
			
		}
		if(prodNo == null) {
			errors.put("prodNo", "商品編號不可空白");
		}
		
		
		OrderDetail od = oddaoi.select(orderNo, prodNo);	
		if(od==null) {
			errors.put("prodNo", "查無此資料");
		}else {
			return od;
		}
		return null;
	}
//========================================================= Select with compNo ==============================================================
	
	
	public List<OrderDetail> selectWithCompNo(Integer compNo) {
		if(compNo == null) {
			errors.put("compNo", "廠商編號不可為空值");
			return null;
		}
		
		List<OrderDetail> odList = oddaoi.selectByCompNo(compNo);
		
		if(odList .size()==0) {
			errors.put("compNo", "查無資料");
			return null;
		}else {
			return odList;			
		}
		
	}
	
//====================================================== Select By ProdNo=================================================================	
	public List <OrderDetail> selectByProdNo(Integer prodNo) {
		if(prodNo==null) {
			errors.put("prodNo", "商品編號不可為空值");
			System.out.println("商品編號不可為空值");
			return null;
		}
		List<OrderDetail>odList = oddaoi.selectByProdNo(prodNo);
		
		if(odList.size()==0) {
			errors.put("prodNo", "查無資料");
			System.out.println("查無資料");
			return null;
		}else {
			System.out.println(odList);
			return odList;
		}	
	}
	
//===================================================== Add Order Detail ================================================================	
	
	
	public OrderDetail addOrderDetail(OrderDetail od) {
		if(od.getCompNO()==null) {
			errors.put("compNo", "廠商編號不可為空值");
		}
		if(od.getOrderNo()==null) {
			errors.put("orderNo", "訂單編號不可為空值");
		}
		if(od.getProdNo()==null) {
			errors.put("prodNo", "產品編號不可為空值");
		}
		
		OrderDetail odd = oddaoi.insert(od);
		if(odd==null) {
			errors.put("prodPrice", "新增訂單明細失敗");
			return null;
		}else {
			System.out.println("Insert Succeed");
			return odd;
		}
	
	}
//====================================================Select By UserNo====================================================================

	@Override
	public List<OrderViewVO> selectByUserNo(Integer userNo) {
		if(userNo == null) {
			errors.put("userNo", "查無資料");
			return null;
		}
		
		List<OrderViewVO> viewList = oddaoi.selectByUserNo(userNo);
		
		if(viewList .size()==0) {
			errors.put("userNo", "查無資料");
			return null;
		}else {
			return viewList;			
		}
	}
	
	
	
	
	
	
}
