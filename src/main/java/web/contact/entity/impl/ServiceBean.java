package web.contact.entity.impl;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "service")
public class ServiceBean implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "task_no")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer taskNo;

	@Column(name = "email")
	private String email;

	@Column(name = "customer_name")
	private String customerName;

	@Column(name = "customer_content")
	private String customerContent;

	@Column(name = "reply_code")
	private Integer replyCode;

	@Column(name = "create_datetime")
	private Date createDateTime = new Date();

	@Column(name = "reply_datetime")
	private Date replyDateTime;

	public ServiceBean() {

	}

	public ServiceBean(Integer taskNo, String email, String customerName, String customerContent, Integer replyCode,
			Date createDateTime, Date replyDateTime) {
		super();
		this.taskNo = taskNo;
		this.email = email;
		this.customerName = customerName;
		this.customerContent = customerContent;
		this.replyCode = replyCode;
		this.createDateTime = createDateTime;
		this.replyDateTime = replyDateTime;
	}

	@Override
	public String toString() {
		return "ServiceBean [taskNo=" + taskNo + ", email=" + email + ", customerName=" + customerName
				+ ", customerContent=" + customerContent + ", replyCode=" + replyCode + ", createDateTime="
				+ createDateTime + ", replyDateTime=" + replyDateTime + "]";
	}

	public Integer getTaskNo() {
		return taskNo;
	}

	public void setTaskNo(Integer taskNo) {
		this.taskNo = taskNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerContent() {
		return customerContent;
	}

	public void setCustomerContent(String customerContent) {
		this.customerContent = customerContent;
	}

	public Integer getReplyCode() {
		return replyCode;
	}

	public void setReplyCode(Integer replyCode) {
		this.replyCode = replyCode;
	}

	public Date getCreateDateTime() {
		return createDateTime;
	}

	public void setCreateDateTime(Date createDateTime) {
		this.createDateTime = createDateTime;
	}

	public Date getReplyDateTime() {
		return replyDateTime;
	}

	public void setReplyDateTime(Date replyDateTime) {
		this.replyDateTime = replyDateTime;
	}
}