package web.cart.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "shopping_cart")
public class CartVO implements java.io.Serializable{
	@Id
	@Column(name = "cart_no")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer cartNo;
	@Column(name = "prod_no")
	private Integer prodNo;
	@Column(name = "user_no")
	private Integer userNo;
	@Column(name = "prod_amount")
	private Integer prodAmount;
	@Column(name = "prod_price")
	private Integer prodPrice;
	@Column(name = "prod_name")
	private String prodName;
	
	public CartVO() {
		cartNo = 0;
		prodNo = 0;
		userNo = 0;
		prodAmount = 0;
		prodPrice = 0;
		prodName = "";
	}
	
	@Override
	public String toString() {
		return "CartVO [cartNo=" + cartNo + ", prodNo=" + prodNo + ", userNo=" + userNo + ", prodAmount=" + prodAmount
				+ ", prodPrice=" + prodPrice + ", prodName=" + prodName + "]";
	}

	public Integer getCartNo() {
		return cartNo;
	}

	public void setCartNo(Integer cartNo) {
		this.cartNo = cartNo;
	}

	public Integer getProdNo() {
		return prodNo;
	}

	public void setProdNo(Integer prodNo) {
		this.prodNo = prodNo;
	}

	public Integer getUserNo() {
		return userNo;
	}

	public void setUserNo(Integer userNo) {
		this.userNo = userNo;
	}

	public Integer getProdAmount() {
		return prodAmount;
	}

	public void setProdAmount(Integer prodAmount) {
		this.prodAmount = prodAmount;
	}

	public Integer getProdPrice() {
		return prodPrice;
	}

	public void setProdPrice(Integer prodPrice) {
		this.prodPrice = prodPrice;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	
	

//	@Column(name = "last_update_datetime")
//	private java.util.Date lastUpdateDatetime;
	
	
//	@Override
//	public String toString() {
//		return "CartVO [cartNo=" + cartNo + ", prodNo=" + prodNo + ", userNo=" + userNo + ", prodAmount=" + prodAmount
//				+ ", prodPrice=" + prodPrice + ", lastUpdateDatetime=" + lastUpdateDatetime + "]";
//	}
	
//	public java.util.Date getLastUpdateDatetime() {
//		return lastUpdateDatetime;
//	}
//
//
//	public void setLastUpdateDatetime(java.util.Date lastUpdateDatetime) {
//		this.lastUpdateDatetime = lastUpdateDatetime;
//	}
	
	
}
