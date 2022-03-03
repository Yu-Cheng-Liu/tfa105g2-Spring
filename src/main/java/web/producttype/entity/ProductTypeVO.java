package web.producttype.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "prod_type")
public class ProductTypeVO implements java.io.Serializable {
	@Id
	@Column(name = "prod_type_code")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer prodTypeCode;
	
	@Column(name = "prod_type_desc")
	
	private String prodTypeDesc;
	
	
	@Override
	public String toString() {
		return "ProductTypeVO [prodTypeCode=" + prodTypeCode + ", prodTypeDesc=" + prodTypeDesc + "]";
	}


	public Integer getProdTypeCode() {
		return prodTypeCode;
	}
	
	@OneToMany
	@JoinColumn(name = "prod_type_code")
	public void setProdTypeCode(Integer prodTypeCode) {
		this.prodTypeCode = prodTypeCode;
	}


	public String getProdTypeDesc() {
		return prodTypeDesc;
	}


	public void setProdTypeDesc(String prodTypeDesc) {
		this.prodTypeDesc = prodTypeDesc;
	}
	
}
