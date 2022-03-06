package web.manager.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "admin_function_list")
public class FunctionBean implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "function_no")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer functionNo;

	@Column(name = "function_name")
	private String functionName;

	public Integer getFunctionNo() {
		return functionNo;
	}

	public void setFunctionNo(Integer functionNo) {
		this.functionNo = functionNo;
	}

	public String getFunctionName() {
		return functionName;
	}

	public void setFunctionName(String functionName) {
		this.functionName = functionName;
	}

}