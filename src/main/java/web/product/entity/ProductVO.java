package web.product.entity;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

@Entity
@Table(name = "prod_data")
public class ProductVO implements java.io.Serializable {
	@Id
	@Column(name = "prod_no")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer prodNo;
	@Column(name = "comp_no")
	private Integer compNo;
	@Column(name = "prod_type_code")
	private Integer prodTypeCode;
	@Column(name = "prod_name")
	private String prodName;
	@Column(name = "prod_desc")
	private String prodDesc;
	@Column(name = "prod_price")
	private Integer prodPrice;
	@Column(name = "prod_stock")
	private Integer prodStock;
	@Column(name = "prod_verify")
	private String prodVerify;
	
	@Column(name = "prod_img_1",columnDefinition="MEDIUMBLOB")
	private byte[] prodImg1;
	@Column(name = "prod_img_2",columnDefinition="MEDIUMBLOB")
	private byte[] prodImg2;
	@Column(name = "prod_img_3",columnDefinition="MEDIUMBLOB")
	private byte[] prodImg3;
//	@Column(name = "start_date")
//	private Date startDate;
//	@Column(name = "end_date")
//	private Date endDate;

//	@Override
//	public String toString() {
//		return "ProductVO [prodNo=" + prodNo + ", compNo=" + compNo + ", prodTypeCode=" + prodTypeCode + ", prodName="
//				+ prodName + ", prodDesc=" + prodDesc + ", prodPrice=" + prodPrice + ", prodStock=" + prodStock
//				+ ", prodVerify=" + prodVerify + ", prodImg1=" + Arrays.toString(prodImg1) + ", prodImg2="
//				+ Arrays.toString(prodImg2) + ", prodImg3=" + Arrays.toString(prodImg3) + ", startDate=" + startDate
//				+ ", endDate=" + endDate + "]";
//	}

	
	@Override
	public String toString() {
		return "ProductVO [prodNo=" + prodNo + ", compNo=" + compNo + ", prodTypeCode=" + prodTypeCode + ", prodName="
				+ prodName + ", prodDesc=" + prodDesc + ", prodPrice=" + prodPrice + ", prodStock=" + prodStock
				+ ", prodVerify=" + prodVerify + ", prodImg1=" + Arrays.toString(prodImg1) + ", prodImg2="
				+ Arrays.toString(prodImg2) + ", prodImg3=" + Arrays.toString(prodImg3) + "]";
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

	@ManyToOne
	@JoinColumn(
			name = "prod_type_code",
			referencedColumnName = "prod_type_code")
	public Integer getProdTypeCode() {
		return prodTypeCode;
	}

	public void setProdTypeCode(Integer prodTypeCode) {
		this.prodTypeCode = prodTypeCode;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public String getProdDesc() {
		return prodDesc;
	}

	public void setProdDesc(String prodDesc) {
		this.prodDesc = prodDesc;
	}

	public Integer getProdPrice() {
		return prodPrice;
	}

	public void setProdPrice(Integer prodPrice) {
		this.prodPrice = prodPrice;
	}

	public Integer getProdStock() {
		return prodStock;
	}

	public void setProdStock(Integer prodStock) {
		this.prodStock = prodStock;
	}

	public String getProdVerify() {
		return prodVerify;
	}

	public void setProdVerify(String prodVerify) {
		this.prodVerify = prodVerify;
	}

	public byte[] getProdImg1() {
		return prodImg1;
	}

	public void setProdImg1(byte[] prodImg1) {
		this.prodImg1 = prodImg1;
	}

	public byte[] getProdImg2() {
		return prodImg2;
	}

	public void setProdImg2(byte[] prodImg2) {
		this.prodImg2 = prodImg2;
	}

	public byte[] getProdImg3() {
		return prodImg3;
	}

	public void setProdImg3(byte[] prodImg3) {
		this.prodImg3 = prodImg3;
	}

//	public Date getStartDate() {
//		return startDate;
//	}
//
//	public void setStartDate(Date startDate) {
//		this.startDate = startDate;
//	}
//
//	public Date getEndDate() {
//		return endDate;
//	}
//
//	public void setEndDate(Date endDate) {
//		this.endDate = endDate;
//	}
	
	public static byte[] getImage(String path) throws IOException {
		FileInputStream fis = new FileInputStream(path);
		byte[] buffer = new byte[fis.available()];
		fis.read(buffer);
		fis.close();
		return buffer;
	}

}
