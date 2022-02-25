package web.booking.dao;


import java.util.List;

import web.booking.entity.BookingVO;

public interface BookingDAO {
		public abstract BookingVO selectByTower(Integer towerNo);
		public abstract BookingVO selectByBooking(Integer bookingNo);
		public abstract List<BookingVO> selectAll(Integer towerNo);
		public abstract BookingVO insert(BookingVO bean);
		public abstract BookingVO update(BookingVO bean);
		public abstract boolean delete(Integer bookingNo);
}
