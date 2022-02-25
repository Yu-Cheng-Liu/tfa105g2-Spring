package web.booking.entity;



import java.time.LocalDateTime;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Component
@Entity
@Table(name="booking_data")
public class BookingVO {
@Id
@Column(name="booking_no")
@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Integer bookingNo;
@Column(name="tower_no")
	private Integer towerNo;
@Column(name="user_no")
	private Integer userNo;
@Column(name="order_no")
	private Integer orderNo;
@Column(name="reserve_date")
	private Date    reserveDate;
@Column(name="remark")
	private String  remark;
@Column(name="create_datetime")
	private LocalDateTime createDateTime = LocalDateTime.now();
	
	
	@Override
	public String toString() {
		return "Bookingbean [bookingNo=" + bookingNo + ", towerNo=" + towerNo + ", userNo=" + userNo + ", orderNo="
				+ orderNo + ", reserveDate=" + reserveDate + ", remark=" + remark + ", createDateTime=" + createDateTime
				+ "]";
	}
	public Integer getBookingNo() {
		return bookingNo;
	}
	public void setBookingNo(Integer bookingNo) {
		this.bookingNo = bookingNo;
	}
	public Integer getTowerNo() {
		return towerNo;
	}
	public void setTowerNo(Integer towerNo) {
		this.towerNo = towerNo;
	}
	public Integer getUserNo() {
		return userNo;
	}
	public void setUserNo(Integer userNo) {
		this.userNo = userNo;
	}
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
	public Date getReserveDate() {
		return reserveDate;
	}
	public void setReserveDate(Date reserveDate) {
		this.reserveDate = reserveDate;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public LocalDateTime getCreateDateTime() {
		return createDateTime;
	}
	public void setCreateDateTime(LocalDateTime createDateTime) {
		this.createDateTime = createDateTime;
	}
	
	
	
		
	
 	
}
