package web.manager.dao.impl;

import java.util.List;
import javax.persistence.PersistenceContext;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import web.manager.dao.RightDAOInterface;
import web.manager.entity.RightBean;

@Repository
public class RightDAO implements RightDAOInterface {

	@PersistenceContext
	private Session session;

	@Override
	public List<RightBean> selectAll() {
		return session.createQuery("FROM RightBean", RightBean.class).list();
	}

	@Override
	public RightBean select(RightBean rightBean) {
		return session.createQuery("FROM RightBean WHERE adminNo = :adminNo, functionNo = :functionNo", RightBean.class)
				.setParameter("adminNo", rightBean.getAdminNo()).setParameter("functionNo", rightBean.getFunctionNo())
				.uniqueResult();
	}

	@Override
	public RightBean insert(RightBean rightBean) {
		if (rightBean != null && rightBean.getAdminNo() != null && rightBean.getFunctionNo() != null) {
			session.save(rightBean);
			return rightBean;
		}
		return null;
	}

	@Override
	public boolean delete(RightBean rightBean) {
		if (rightBean != null && rightBean.getAdminNo() != null && rightBean.getFunctionNo() != null) {
				session.delete(rightBean);
				return true;
		}
		return false;
	}
}
