package web.manager.dao;

import java.util.List;
import web.manager.entity.AdminBean;

public interface AdminDAOInterface {
	public abstract List<AdminBean> selectAll();

	public abstract AdminBean select(AdminBean adminBean);
	
	public abstract boolean delete(AdminBean bean);

	public abstract AdminBean insert(AdminBean bean);
	
	public abstract AdminBean update(AdminBean bean);

}