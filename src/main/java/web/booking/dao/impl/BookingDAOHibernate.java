package web.booking.dao.impl;


import java.util.List;

import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import web.booking.dao.BookingDAO;
import web.booking.entity.BookingVO;
@Repository
public  class BookingDAOHibernate implements BookingDAO{
	@PersistenceContext
	private Session session;
	
//	public static void main(String[]args) {
//		SessionFactory sessionFactory=HibernateUtil.getSessionfactory();
//		Session session=sessionFactory.getCurrentSession();
//		Transaction transaction=session.beginTransaction();
//		
//		BookingDAO dao=new BookingDAOHibernate(session);
//		
//		List<BookingVO> bean = dao.selectAll(100);
//	    
//		System.out.println("bean="+bean);
//		
//		transaction.commit();
//		session.close();
//		sessionFactory.close();
//	}

	@Override
	public BookingVO selectByTower(Integer towerNo) {
		if(towerNo!=null) {
			String hql = "From BookingVO where towerNo = :towerNO";
			BookingVO result = session.createQuery(hql, BookingVO.class).setParameter("towerNO", towerNo).uniqueResult();
			return result ;
		}
		return null;
	}

	
	@Override
	public List<BookingVO> selectAll(Integer towerNo) {
		if(towerNo!=null) {
			return session.createQuery(
				"FROM BookingVO where towerNo = :towerNo",BookingVO.class).setParameter("towerNo", towerNo).list();
		}
		else {
			return null;
		}
	}

	@Override
	public BookingVO insert(BookingVO bean) {
		
		if(bean!=null && bean.getTowerNo() != null) {
			session.save(bean); 
				System.out.println("Insert Succeed");
				return bean;
			}else {
				System.out.println("Insert Failed");
			}
		
		return null;
	}

	@Override
	public BookingVO update(BookingVO bean) {
		if(bean.getBookingNo()!=null) {
			String hql = "From BookingVO where bookingNo = :bookingNo";
			BookingVO select = session.createQuery(hql, BookingVO.class).setParameter("bookingNo", bean.getBookingNo()).uniqueResult();
			
			select.setOrderNo(bean.getOrderNo());
			select.setRemark(bean.getRemark());
			select.setReserveDate(bean.getReserveDate());
			
			session.save(select);
			return select;
		}else {
			System.out.println("select failed");
		}

		return null;
	}

	@Override
	public boolean delete(Integer bookingNo) {
		if(bookingNo!=null) {
			BookingVO temp= session.get(BookingVO.class, bookingNo);
			if(temp!=null) {
				session.delete(temp);
				return true;
			}
		}
		return false;
	}

	@Override
	public BookingVO selectByBooking(Integer bookingNo) {
		if(bookingNo!=null) {
			String hql = "From BookingVO where bookingNo = :bookingNo";
			BookingVO result = session.createQuery(hql, BookingVO.class).setParameter("bookingNo", bookingNo).uniqueResult();
			return result ;
		}
		return null;
	}	
}
