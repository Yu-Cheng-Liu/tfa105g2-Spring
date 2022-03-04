package web.manager.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import web.manager.dao.impl.RightDAO;
import web.manager.entity.RightBean;
import web.manager.service.RightServiceInterface;

@Service
@Transactional
public class RightService implements RightServiceInterface {

	private Map<String, String> errorMsgs;

	@Autowired
	private RightDAO rightDao;

	@Override
	public List<RightBean> selectAll() {
		return rightDao.selectAll();
	}

	@Override
	public RightBean insert(RightBean rightBean) {
		errorMsgs = new HashMap<String, String>();
		if (rightDao.select(rightBean) != null) {
			errorMsgs.put("insert", "管理員已有此功能");
		}

		if (!errorMsgs.isEmpty()) {
			return null;
		}
		return rightDao.insert(rightBean);
	}

	@Override
	public boolean delete(RightBean rightBean) {
		if (rightDao.select(rightBean) != null) {
			return rightDao.delete(rightBean);
		}
		return false;
	}
}
