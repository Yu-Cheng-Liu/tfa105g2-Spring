package web.tower.dao;

import java.util.List;

import web.tower.entity.TowerVO;

public interface TowerDAO {
	public abstract TowerVO select(Integer towerNO);
	public abstract List<TowerVO> select();
	public abstract TowerVO insert(TowerVO bean);
	public abstract TowerVO update(Integer towerNo,Integer userNo,String deadName);
	public abstract boolean  delete(Integer towerNo);
	public List selectByUser(Integer userNo) ;
	
}
