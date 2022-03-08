package web.compdata.entity;

import java.io.Serializable;
import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="comp_data")
public class CompData implements Serializable {
	
	@Id
	@Column(name="comp_no")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer compNO;
	@Column(name="comp_name")
	private String compName;
	@Column(name="comp_account")
	private String compAccount;
	@Column(name="charge_person")
	private String chargePerson;
	@Column(name="comp_phone")
	private String compPhone;
	@Column(name="email")
	private String email ;
	@Column(name="address")
	private String address;
	@Column(name="password")
	private String password;
	@Column(name="create_date")
	private LocalDateTime  createDate = LocalDateTime.now();
	@Column(name="verify")
	private String verify;
	
	public CompData() {
		
	}

	public CompData(Integer compNO, String compName, String compAccount, String chargePerson, String compPhone,
			String email, String address, String password, LocalDateTime createDate, String verify) {
		super();
		this.compNO = compNO;
		this.compName = compName;
		this.compAccount = compAccount;
		this.chargePerson = chargePerson;
		this.compPhone = compPhone;
		this.email = email;
		this.address = address;
		this.password = password;
		this.createDate = createDate;
		this.verify = verify;
	}



	public Integer getCompNO() {
		return compNO;
	}

	public void setCompNO(Integer compNO) {
		this.compNO = compNO;
	}

	public String getCompName() {
		return compName;
	}

	public void setCompName(String compName) {
		this.compName = compName;
	}

	public String getCompAccount() {
		return compAccount;
	}

	public void setCompAccount(String compAccount) {
		this.compAccount = compAccount;
	}

	public String getChargePerson() {
		return chargePerson;
	}

	public void setChargePerson(String chargePerson) {
		this.chargePerson = chargePerson;
	}

	public String getCompPhone() {
		return compPhone;
	}

	public void setCompPhone(String compPhone) {
		this.compPhone = compPhone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public LocalDateTime getCreateDate() {
		return createDate;
	}

	public void setCreateDate(LocalDateTime createDate) {
		this.createDate = createDate;
	}

	public String getVerify() {
		return verify;
	}

	public void setVerify(String verify) {
		this.verify = verify;
	}

	@Override
	public String toString() {
		return "CompData [compNO=" + compNO + ", compName=" + compName + ", compAccount=" + compAccount
				+ ", chargePerson=" + chargePerson + ", compPhone=" + compPhone + ", email=" + email + ", address="
				+ address + ", password=" + password + ", createDate=" + createDate + ", verify=" + verify + "]";
	}
	
	

	
}
