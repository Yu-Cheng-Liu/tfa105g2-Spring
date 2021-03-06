package web.cart.entity;

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
	@Column(name = "comp_no")
	private Integer compNo;
	@Column(name = "prod_amount")
	private Integer prodAmount;
	@Column(name = "prod_price")
	private Integer prodPrice;
	@Column(name = "prod_name")
	private String prodName;
	
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((prodNo == null) ? 0 : prodNo.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CartVO other = (CartVO) obj;
		if (prodNo == null) {
			if (other.prodNo != null)
				return false;
		} else if (!prodNo.equals(other.prodNo))
			return false;
		return true;
	}

	public CartVO() {
		cartNo = 0;
		prodNo = 0;
		compNo = 0;
		prodAmount = 0;
		prodPrice = 0;
		prodName = "";
	}
	
	@Override
	public String toString() {
		return "CartVO [cartNo=" + cartNo + ", prodNo=" + prodNo + ", compNo=" + compNo + ", prodAmount=" + prodAmount
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

	public Integer getCompNo() {
		return compNo;
	}

	public void setCompNo(Integer compNo) {
		this.compNo = compNo;
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
	
	
}
