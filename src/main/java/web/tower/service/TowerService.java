package web.tower.service;

import java.util.List;

import web.tower.entity.TowerVO;

public interface TowerService {
	public abstract List<TowerVO> selectAll();
	public abstract TowerVO insert(TowerVO bean);
	public abstract TowerVO update (TowerVO bean);
	public abstract boolean delete(TowerVO bean);
	public List<TowerVO> selectAllByUserNo(Integer userNo);
}
