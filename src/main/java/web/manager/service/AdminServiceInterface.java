package web.manager.service;

import java.util.List;
import web.manager.entity.AdminBean;

public interface AdminServiceInterface {
	public abstract List<AdminBean> selectAll();
	
	public abstract boolean delete(AdminBean bean);

	public abstract AdminBean insert(AdminBean bean);
	
	public abstract AdminBean update(AdminBean bean);

	public abstract AdminBean login(AdminBean bean);//
}