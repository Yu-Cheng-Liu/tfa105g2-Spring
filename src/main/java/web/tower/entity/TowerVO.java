package web.tower.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;


@Component
@Entity
@Table(name = "tower_data")
public class TowerVO {
	@Id
	@Column(name="tower_no")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer towerNo;
	@Column(name="user_no")
	private Integer userNo;
	@Column(name="dead_name")
	private String deadName;
	

	
	
	
	@Override
	public String toString() {
		return "TowerBean [towerNo=" + towerNo + ", userNo=" + userNo + ", deadName=" + deadName + "]";
	}
	
	public Integer getTowerNo() {
		return towerNo;
	}
	public void setTowerNo(Integer towerNo) {
		this.towerNo = towerNo;
	}
	public Integer getUserNo() {
		return userNo;
	}
	public void setUserNo(Integer userNo) {
		this.userNo = userNo;
	}
	public String getDeadName() {
		return deadName;
	}
	public void setDeadName(String deadName) {
		this.deadName = deadName;
	}


}
