package web.contact.dao;

import java.util.Date;
import java.util.List;

import web.contact.entity.impl.ServiceBean;

public interface ServiceDAOInterface {
	public abstract List<ServiceBean> select();
	
	public abstract ServiceBean select(ServiceBean serviceBean);
	
	public abstract List<ServiceBean> select(Date startDate, Date endDate);
	
	public abstract ServiceBean update(ServiceBean serviceBean);

	public abstract ServiceBean insert(ServiceBean serviceBean);

}
