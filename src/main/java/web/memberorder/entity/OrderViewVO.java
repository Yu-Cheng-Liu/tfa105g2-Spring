package web.memberorder.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="orderview")
public class OrderViewVO implements java.io.Serializable {
	@Id
	@Column(name = "user_no")
	private Integer userNo;
	@Column(name = "order_no")
	private Integer orderNo;
	@Column(name = "prod_name")
	private String prodName;
	@Column(name = "prod_amount")
	private Integer prodAmount;
	@Column(name = "order_date")
	private LocalDateTime orderDate;
	@Column(name = "total")
	private Integer total;
	@Column(name = "member_name")
	private String memberName;
	@Column(name = "member_phone")
	private String memberPhone;
	@Column(name = "delivery_address")
	private String deliveryAddress;
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
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public Integer getProdAmount() {
		return prodAmount;
	}
	public void setProdAmount(Integer prodAmount) {
		this.prodAmount = prodAmount;
	}
	public LocalDateTime getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(LocalDateTime orderDate) {
		this.orderDate = orderDate;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberPhone() {
		return memberPhone;
	}
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	public String getDeliveryAddress() {
		return deliveryAddress;
	}
	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}
	
	
	
	
	
}
