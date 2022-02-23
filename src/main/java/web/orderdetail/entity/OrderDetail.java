package web.orderdetail.entity;

import java.io.Serializable;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Component
@Entity
@Table(name="order_detail")
public class OrderDetail implements Serializable {
	
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="order_no")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer orderNo;
	@Column(name="prod_no")
	private Integer prodNo ;
	@Column(name="comp_no")
	private Integer compNO ;
	@Column(name="prod_name")
	private String  prodName;
	@Column(name="prod_amount")
	private Integer prodAmount;
	@Column(name="prod_price")
	private Integer prodPrice;
	
	public OrderDetail() {
		
	}
	

	public OrderDetail(Integer orderNo, Integer prodNo, Integer compNO, String prodName, Integer prodAmount,
			Integer prodPrice) {
		super();
		this.orderNo = orderNo;
		this.prodNo = prodNo;
		this.compNO = compNO;
		this.prodName = prodName;
		this.prodAmount = prodAmount;
		this.prodPrice = prodPrice;
	}


	public Integer getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}

	public Integer getProdNo() {
		return prodNo;
	}

	public void setProdNo(Integer prodNo) {
		this.prodNo = prodNo;
	}

	public Integer getCompNO() {
		return compNO;
	}

	public void setCompNO(Integer compNO) {
		this.compNO = compNO;
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

	public Integer getProdPrice() {
		return prodPrice;
	}

	public void setProdPrice(Integer prodPrice) {
		this.prodPrice = prodPrice;
	}

	@Override
	public String toString() {
		return "OrderDetail [orderNo=" + orderNo + ", prodNo=" + prodNo + ", compNO=" + compNO + ", prodName="
				+ prodName + ", prodAmount=" + prodAmount + ", prodPrice=" + prodPrice + "]";
	}
	
	
}
