package web.contact.dao.impl;

import java.util.Date;
import java.util.List;

import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import web.contact.dao.ServiceDAOInterface;
import web.contact.entity.impl.ServiceBean;

@Repository
public class ServiceDAO implements ServiceDAOInterface {

	@PersistenceContext
	private Session session;

	@Override
	public List<ServiceBean> select() {
		return session.createQuery("FROM ServiceBean", ServiceBean.class).list();
	}

	@Override
	public ServiceBean select(ServiceBean serviceBean) {
		if (serviceBean != null && serviceBean.getTaskNo() != null) {
			return session.get(ServiceBean.class, serviceBean.getTaskNo());
		}
		return null;
	}

	@Override
	public List<ServiceBean> select(Date startDate, Date endDate) {
		String hql = "FROM ServiceBean WHERE DATE(createDateTime) BETWEEN :startDate AND :endDate ORDER BY taskNo";
		if (startDate != null && endDate != null) {
			return session.createQuery(hql, ServiceBean.class).setParameter("endDate", endDate)
					.setParameter("startDate", startDate).list();
		}
		return null;
	}

	@Override
	public ServiceBean update(ServiceBean serviceBean) {
		if (serviceBean.getTaskNo() != null) {
			ServiceBean temp = session.get(ServiceBean.class, serviceBean.getTaskNo());
			if (temp != null) {
				temp.setReplyCode(2);
				temp.setReplyDateTime(serviceBean.getReplyDateTime());
				return (ServiceBean) session.merge(temp);
			}
		}
		return null;
	}

	@Override
	public ServiceBean insert(ServiceBean serviceBean) {
		if (serviceBean.getCustomerName() != null && serviceBean.getEmail() != null
				&& serviceBean.getCustomerContent() != null) {
			serviceBean.setReplyCode(1);
			session.save(serviceBean);
			return serviceBean;
		}
		return null;
	}
}
