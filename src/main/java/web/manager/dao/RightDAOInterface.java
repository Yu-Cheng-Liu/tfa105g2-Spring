package web.manager.dao;

import java.util.List;
import web.manager.entity.RightBean;

public interface RightDAOInterface {
	public abstract List<RightBean> selectAll();
	
	public abstract List<RightBean> selectAdminAll(RightBean rightBean);
	
	public abstract RightBean select(RightBean rightBean);
	
	public abstract boolean deleteAll(RightBean bean);
	
	public abstract boolean delete(RightBean bean);

	public abstract RightBean insert(RightBean bean);

}