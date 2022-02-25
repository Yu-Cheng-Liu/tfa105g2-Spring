package web.booking.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.booking.dao.BookingDAO;
import web.booking.entity.BookingVO;
import web.booking.service.BookingService;
@Service
@Transactional
public class BookingServiceImpl implements BookingService {
	@Autowired
	private BookingDAO bookingDao;
//	public static void main(String[]ages) {
//		SessionFactory sessionFactory=HibernateUtil.getSessionfactory();
//		Session session=sessionFactory.getCurrentSession();
//		Transaction transaction=session.beginTransaction();
//		
//		BookingService bookingService=
//			new BookingService(session);
//////		BookingVO bv = new BookingVO();
//////		bv.setTowerNo(100);
//////		bv.setReserveDate(Date.valueOf(LocalDate.now()));
//		List <BookingVO> select = bookingService.selectAll(100);
//		System.out.println("selects="+select);
//		
//		transaction.commit();
//		session.close();
//		sessionFactory.close();
//	}
	
	public BookingVO select(Integer towerNo) {
		BookingVO bv = new BookingVO();
		bv.setTowerNo(towerNo);
		if(bv!=null && towerNo!=null) {
			BookingVO result = bookingDao.selectByTower(towerNo);
			return result;
		}
		return null;
	}
	
	public BookingVO selectByBookingNo(Integer bookingNo) {
		if(bookingNo != null) {
			BookingVO result = bookingDao.selectByBooking(bookingNo);
			return result;
		}
		return null;
	}
	
	public List<BookingVO> selectAll(Integer towerNo) {
		List<BookingVO> result=null;
		if(towerNo!=null){
			result=(List<BookingVO>) bookingDao.selectAll(towerNo);
			if(result!=null) {
				return result;
			}
		}else {
//			result=bookingDao.select();
			System.out.println("eo4");
			return null;
		}
		return null;
	}
	public BookingVO insert(BookingVO bean) {
		BookingVO result=null;
		if(bean!=null) {
		
			result =  bookingDao.insert(bean);
		}
		return result;
	}
	public BookingVO update(BookingVO bean) {
//		BookingVO result = bookingDao.select(bean.getTowerNo());
//		
//		if(result!=null&&result.getBookingNo()!=null) {
//			result.setReserveDate(bean.getReserveDate());
//			result.setRemark(bean.getRemark());
//			result=bookingDao.update(result);
//		}
//		return result;
//	}
		if(bean!=null) {
			BookingVO bv = bookingDao.selectByBooking(bean.getBookingNo());
			System.out.println(bv.toString());
			bv.setReserveDate(bean.getReserveDate());
			bv.setRemark(bean.getRemark());
			bookingDao.update(bv);
			return bv;
		}else {
			return null;
		}
		
	}
		
	public boolean delete(BookingVO bean) {
		boolean result=false;
		if(bean!=null&&bean.getBookingNo()!=null) {
			result=bookingDao.delete(bean.getBookingNo());
		}
		return result;
	}
}
