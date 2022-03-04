package web.manager.service;

import java.util.List;
import web.manager.entity.RightBean;

public interface RightServiceInterface {
	public abstract List<RightBean> selectAll();
	
	public abstract boolean delete(RightBean bean);

	public abstract RightBean insert(RightBean bean);
}