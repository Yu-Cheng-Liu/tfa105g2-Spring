package web.manager.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import web.manager.dao.impl.RightDAO;
import web.manager.entity.RightBean;
import web.manager.service.RightServiceInterface;

@Service
@Transactional
public class RightService implements RightServiceInterface {

	@Autowired
	private RightDAO rightDao;

	@Override
	public List<RightBean> selectAll() {
		return rightDao.selectAll();
	}

	@Override
	public List<RightBean> selectAdminAll(RightBean rightBean) {
		return rightDao.selectAdminAll(rightBean);
	}

	@Override
	public RightBean insert(RightBean rightBean) {
		return rightDao.insert(rightBean);
	}

	@Override
	public boolean delete(RightBean rightBean) {
		if (rightBean != null && rightBean.getFunctionNo() != null) {
			rightBean = rightDao.select(rightBean);
			return rightDao.delete(rightBean);
		} else if (rightBean.getAdminNo() != null) {
			return rightDao.deleteAll(rightBean);
		}
		return false;
	}
}
