package web.memberorder.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "delivery_status")
public class DeliveryStatusVO implements java.io.Serializable {
	@Id
	@Column(name = "delivery_status_code")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer deliveryStatusCode;
	
	@Column(name = "delivery_status_desc")
	private String deliveryStatusDesc;

	@Override
	public String toString() {
		return "DeliveryStatusVO [deliveryStatusCode=" + deliveryStatusCode + ", deliveryStatusDesc="
				+ deliveryStatusDesc + "]";
	}

	public Integer getDeliveryStatusCode() {
		return deliveryStatusCode;
	}

	public void setDeliveryStatusCode(Integer deliveryStatusCode) {
		this.deliveryStatusCode = deliveryStatusCode;
	}

	public String getDeliveryStatusDesc() {
		return deliveryStatusDesc;
	}

	public void setDeliveryStatusDesc(String deliveryStatusDesc) {
		this.deliveryStatusDesc = deliveryStatusDesc;
	}

}
