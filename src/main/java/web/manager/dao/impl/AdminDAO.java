package web.manager.dao.impl;

import java.util.List;
import javax.persistence.PersistenceContext;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import web.manager.dao.AdminDAOInterface;
import web.manager.entity.AdminBean;

@Repository
public class AdminDAO implements AdminDAOInterface {

	@PersistenceContext
	private Session session;

	@Override
	public List<AdminBean> selectAll() {
		return session.createQuery("FROM AdminBean", AdminBean.class).list();
	}

	@Override
	public AdminBean select(AdminBean adminBean) {
		if (adminBean.getAdminNo() != null) {
			return session.get(AdminBean.class, adminBean.getAdminNo());
		} else if (adminBean.getAccount() != null) {
			return session.createQuery("FROM AdminBean WHERE account = :account", AdminBean.class)
					.setParameter("account", adminBean.getAccount().trim()).uniqueResult();
		}
		return null;
	}

	@Override
	public AdminBean update(AdminBean adminBean) {
		if (adminBean != null) {
			return (AdminBean) session.merge(adminBean);
		}
		return null;
	}

	@Override
	public AdminBean insert(AdminBean adminBean) {
		if (adminBean.getAccount() != null && adminBean.getPassword() != null) {
			session.save(adminBean);
			return adminBean;
		}
		return null;
	}

	@Override
	public boolean delete(AdminBean adminBean) {
		if (adminBean.getAdminNo() != null) {
			adminBean = session.get(AdminBean.class, adminBean.getAdminNo());
			if (adminBean != null) {
				session.delete(adminBean);
				return true;
			}
		}
		return false;
	}
}
