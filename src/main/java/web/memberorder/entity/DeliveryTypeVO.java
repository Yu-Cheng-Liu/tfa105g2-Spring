package web.memberorder.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "delivery_type")
public class DeliveryTypeVO implements java.io.Serializable {
	@Id
	@Column(name = "delivery_type_code")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer deliveryTypeCode;
	@Column(name = "delivery_type_desc")
	private String deliveryTypeDesc;
	@Column(name = "delivery_fee")
	private Integer deliveryFee;

	@Override
	public String toString() {
		return "DeliveryTypeVO [deliveryTypeCode=" + deliveryTypeCode + ", deliveryTypeDesc=" + deliveryTypeDesc
				+ ", deliveryFee=" + deliveryFee + "]";
	}

	public Integer getDeliveryTypeCode() {
		return deliveryTypeCode;
	}

	public void setDeliveryTypeCode(Integer deliveryTypeCode) {
		this.deliveryTypeCode = deliveryTypeCode;
	}

	public String getDeliveryTypeDesc() {
		return deliveryTypeDesc;
	}

	public void setDeliveryTypeDesc(String deliveryTypeDesc) {
		this.deliveryTypeDesc = deliveryTypeDesc;
	}

	public Integer getDeliveryFee() {
		return deliveryFee;
	}

	public void setDeliveryFee(Integer deliveryFee) {
		this.deliveryFee = deliveryFee;
	}

}
