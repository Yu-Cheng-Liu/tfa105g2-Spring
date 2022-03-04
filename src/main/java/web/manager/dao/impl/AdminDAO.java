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
		}
		return null;
	}

	@Override
	public AdminBean update(AdminBean adminBean) {
		if (adminBean.getAdminNo() != null) {
			AdminBean temp = session.get(AdminBean.class, adminBean.getAdminNo());
			if (temp != null) {
				temp.setAccount(adminBean.getAccount());
				temp.setPassword(adminBean.getPassword());
				return (AdminBean) session.merge(temp);
			}
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
