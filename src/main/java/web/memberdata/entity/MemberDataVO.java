package web.memberdata.entity;

import java.sql.Date;
import java.time.LocalDate;
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
@Table(name = "member_data")
public class MemberDataVO {
	@Id
	@Column(name = "user_no")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer userno;
	@Column(name = "user_account")
	private String useraccount;
	@Column(name = "user_name")
	private String username;
	private String phone;
	private String email;
	private String address;
	private String gender;
	private Date birthday;
	private byte[] picture;
	private String password;
	@Column(name = "create_date")
	private LocalDate createdate;
	@Column(name = "last_update_datetime")
	private LocalDateTime lastupdatedatetime;
	@Column(name = "verify_status")
	private String verifystatus;

	@Override
	public String toString() {
		return "MemberDataVO [userno=" + userno + ", useraccount=" + useraccount + ", username=" + username + ", phone="
				+ phone + ", email=" + email + ", address=" + address + ", gender=" + gender + ", birthday=" + birthday
				+ ", password=" + password + ", createdate=" + createdate + ", lastupdatedatetime=" + lastupdatedatetime
				+ ", verifystatus=" + verifystatus + "]";
	}

	public Integer getUserno() {
		return userno;
	}

	public void setUserno(Integer userno) {
		this.userno = userno;
	}

	public String getUseraccount() {
		return useraccount;
	}

	public void setUseraccount(String useraccount) {
		this.useraccount = useraccount;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public byte[] getPicture() {
		return picture;
	}

	public void setPicture(byte[] picture) {
		this.picture = picture;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public LocalDate getCreatedate() {
		return createdate;
	}

	public void setCreatedate(LocalDate createdate) {
		this.createdate = createdate;
	}

	public LocalDateTime getLastupdatedatetime() {
		return lastupdatedatetime;
	}

	public void setLastupdatedatetime(LocalDateTime lastupdatedatetime) {
		this.lastupdatedatetime = lastupdatedatetime;
	}

	public String getVerifystatus() {
		return verifystatus;
	}

	public void setVerifystatus(String verifystatus) {
		this.verifystatus = verifystatus;
	}

}
