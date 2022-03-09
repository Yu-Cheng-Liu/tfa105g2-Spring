package web.orderdetail.dao.impl;

import java.util.List;

import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import web.memberorder.entity.OrderViewVO;
import web.orderdetail.dao.OrderDetailDAOInterface;
import web.orderdetail.entity.OrderDetail;

@Repository
public class OrderDetailDAO implements OrderDetailDAOInterface {
	@PersistenceContext
	private Session session;

	public Session getSession() {
		return this.session;
	}

//	public static void main(String[] args) {
//		SessionFactory sf = HibernateUtil.getSessionfactory();
//		Session session = sf.getCurrentSession();
//		Transaction tx = session.beginTransaction();
//		OrderDetailDAOInterface oddaoi = new OrderDetailDAO(sf);
//
////		od.setCompNO(797);
////		od.setProdAmount(510);
////		od.setProdName("幹");
////		od.setProdNo(888);
////		od.setProdPrice(50000);
//		
//		oddaoi.select(2,888);
////		oddaoi.update(od);
//		
//		
//		tx.commit();
//		session.close();
//		sf.close();
//	}

	@Override
	public OrderDetail select(Integer orderNo, Integer prodNo) {
		Session session = this.getSession();

		String hql = "From OrderDetail where orderNo =:orderNo and prodNo =:prodNo";

		OrderDetail od = session.createQuery(hql, OrderDetail.class).setParameter("orderNo", orderNo)
				.setParameter("prodNo", prodNo).uniqueResult();

		return od;
	}

	public List<OrderDetail> selectByCompNo(Integer compNo) {
		Session session = this.getSession();

		String hql = "From OrderDetail where compNO =:compNO";

		List<OrderDetail> od = session.createQuery(hql, OrderDetail.class).setParameter("compNO", compNo).list();

		return od;
	}

	@Override
	public List<OrderDetail> selectATon() {
		Session session = this.getSession();
		String hql = "From OrderDetail";
		List<OrderDetail> list = session.createQuery(hql, OrderDetail.class).list();

		if (list != null) {
			System.out.println(list);
			System.out.println("A ton of OrderDetails have been selected");
		} else {
			System.out.println("Failed to select");
		}

		return list;

	}

	@Override
	public OrderDetail insert(OrderDetail orderDetail) {
		Session session = this.getSession();

		if (orderDetail != null && orderDetail.getOrderNo() != null) {
			session.save(orderDetail);
			System.out.println("Insert成功");

		} else {
			System.out.println("請檢查輸入內容");
		}

		return orderDetail;
	}

	@Override
	public boolean delete(Integer orderNo) {
		Session session = this.getSession();

		String hql = "From OrderDetail where orderNo = :orderNo";

		OrderDetail orderDetail = (OrderDetail) session.createQuery(hql, OrderDetail.class)
				.setParameter("orderNo", orderNo).uniqueResult();

		if (orderNo != null && orderDetail != null) {
			session.delete(orderDetail);
			System.out.println("刪除成功");
			return true;

		} else {
			System.out.println("請檢查輸入內容");
		}

		return false;
	}

	@Override
	public boolean update(OrderDetail orderDetail) {
		Session session = this.getSession();

		String hql = "From OrderDetail where orderNo =:orderNo";

		OrderDetail od = (OrderDetail) session.createQuery(hql, OrderDetail.class)
				.setParameter("orderNo", orderDetail.getOrderNo()).uniqueResult();
		if (od != null) {
			od.setCompNO(orderDetail.getCompNO());
			od.setProdNo(orderDetail.getProdNo());
			od.setProdName(orderDetail.getProdName());
			od.setProdPrice(orderDetail.getProdPrice());
			od.setProdAmount(orderDetail.getProdAmount());
		} else {
			System.out.println("Wrong orderNO");
		}

		if (od.getCompNO() != null && od.getProdNo() != null && od.getOrderNo() != null) {
			session.save(od);
			System.out.println("Update success");
			return true;
		} else {
			System.out.println("Somethings wrong with your input");
		}
		return false;
	}

	@Override
	public List selectByProdNo(Integer prodNo) {
		Session session = this.getSession();

		String hql = "From OrderDetail where prodNo =:prodNo";

		List<OrderDetail> od = session.createQuery(hql, OrderDetail.class).setParameter("prodNo", prodNo).list();

		if (od.size() != 0) {
			return od;
		} else {
			return null;
		}

	}

	@Override
	public List<OrderViewVO> selectByUserNo(Integer userNo) {
		Session session = this.getSession();
		String hql = "From OrderViewVO where userNo =:userNo";
		List<OrderViewVO> view = session.createQuery(hql, OrderViewVO.class).setParameter("userNo", userNo).list();
		return view;
	}

}
