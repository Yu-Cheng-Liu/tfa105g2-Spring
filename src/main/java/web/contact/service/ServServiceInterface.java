package web.contact.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import web.contact.entity.impl.ServiceBean;

public interface ServServiceInterface {
	public abstract List<ServiceBean> select();

	public abstract List<ServiceBean> select(Date startDate, Date endDate);

	public abstract ServiceBean insert(ServiceBean bean);

	public abstract ServiceBean sendEmail(ServiceBean serviceBean, String replySubject, String replyContent);

	public Map<String, String> getErrors();
}