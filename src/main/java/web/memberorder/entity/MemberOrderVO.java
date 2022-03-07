package web.memberorder.entity;


import java.time.LocalDateTime;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "member_order")
public class MemberOrderVO {
	@Id
	@Column(name = "order_no")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer orderNo;
	@Column(name = "user_no")
	Integer userNo;
	@Column(name = "delivery_status_code")
	Integer deliveryStatusCode;
	@Column(name = "delivery_type_code")
	Integer deliveryTypeCode;
	@Column(name = "pay_type")
	String payType;
    @Column(name = "delivery_address")
    String deliveryAddress;
	@Column(name = "total")
	Integer total;
	@Column(name = "order_date")
	Date orderDate = new Date();
	@Column(name = "member_name")
	String memberName;
	@Column(name = "member_phone")
	String memberPhone;
	
	@Override
	public String toString() {
		return "MemberOrderVO [orderNo=" + orderNo + ", userNo=" + userNo + ", deliveryStatusCode=" + deliveryStatusCode
				+ ", deliveryTypeCode=" + deliveryTypeCode + ", payType=" + payType + ", deliveryAddress="
				+ deliveryAddress + ", total=" + total + ", orderDate=" + orderDate + ", memberName=" + memberName
				+ ", memberPhone=" + memberPhone + "]";
	}


	public Integer getOrderNo() {
		return orderNo;
	}


	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}


	public Integer getUserNo() {
		return userNo;
	}


	public void setUserNo(Integer userNo) {
		this.userNo = userNo;
	}


	public Integer getDeliveryStatusCode() {
		return deliveryStatusCode;
	}


	public void setDeliveryStatusCode(Integer deliveryStatusCode) {
		this.deliveryStatusCode = deliveryStatusCode;
	}


	public Integer getDeliveryTypeCode() {
		return deliveryTypeCode;
	}


	public void setDeliveryTypeCode(Integer deliveryTypeCode) {
		this.deliveryTypeCode = deliveryTypeCode;
	}


	public String getPayType() {
		return payType;
	}


	public void setPayType(String payType) {
		this.payType = payType;
	}


	public String getDeliveryAddress() {
		return deliveryAddress;
	}


	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}


	public Integer getTotal() {
		return total;
	}


	public void setTotal(Integer total) {
		this.total = total;
	}


	public Date getOrderDate() {
		return orderDate;
	}


	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
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
	
	
	
}
