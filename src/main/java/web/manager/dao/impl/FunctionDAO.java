package web.manager.dao.impl;

import java.util.List;

import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import web.manager.dao.FunctionDAOInterface;
import web.manager.entity.FunctionBean;

@Repository
public class FunctionDAO implements FunctionDAOInterface {

	@PersistenceContext
	private Session session;

	@Override
	public List<FunctionBean> selectAll() {
		return session.createQuery("FROM FunctionBean", FunctionBean.class).list();
	}
	
	@Override
	public FunctionBean select(FunctionBean functionBean) {
		if ("".equals(functionBean.getFunctionName())) {
			return session.createQuery("FROM FunctionBean WHERE functionName = :functionName", FunctionBean.class)
					.setParameter("functionName", functionBean.getFunctionName())
					.uniqueResult();
		}
		return null;
	}

	@Override
	public FunctionBean insert(FunctionBean functionBean) {
		if (functionBean.getFunctionName().trim() != null) {
			session.save(functionBean);
			return functionBean;
		}
		return null;
	}

	@Override
	public boolean delete(FunctionBean functionBean) {
		if (functionBean.getFunctionNo() != null) {
			functionBean = session.get(FunctionBean.class, functionBean.getFunctionNo());
			if (functionBean != null) {
				session.delete(functionBean);
				return true;
			}
		}
		return false;
	}
}
