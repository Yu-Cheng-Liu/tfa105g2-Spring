package web.booking.service;

import java.util.List;

import web.booking.entity.BookingVO;

public interface BookingService {
	
	public BookingVO select(Integer towerNo);
	
	public BookingVO selectByBookingNo(Integer bookingNo);
	
	public List<BookingVO> selectAll(Integer towerNo);
	
	public BookingVO insert(BookingVO bean);
	
	public BookingVO update(BookingVO bean);
	
	public boolean delete(BookingVO bean);

}
