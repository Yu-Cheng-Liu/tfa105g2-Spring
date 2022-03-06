package web.manager.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "admin_function_manage")
public class RightBean implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "admin_no")
	private Integer adminNo;

	@Id
	@Column(name = "function_no")
	private Integer functionNo;

	public Integer getAdminNo() {
		return adminNo;
	}

	public void setAdminNo(Integer adminNo) {
		this.adminNo = adminNo;
	}

	public Integer getFunctionNo() {
		return functionNo;
	}

	public void setFunctionNo(Integer functionNo) {
		this.functionNo = functionNo;
	}

}
