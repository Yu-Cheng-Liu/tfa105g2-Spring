package web.manager.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "admin_account_manage")
public class AdminBean implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "admin_no")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer adminNo;
	
	@Column(name = "admin_account")
	String account;
	
	@Column(name = "password")
	String password;
	
	@Column(name = "create_datetime")
	Date createDate = new Date();

	public Integer getAdminNo() {
		return adminNo;
	}

	public void setAdminNo(Integer adminNo) {
		this.adminNo = adminNo;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
}
