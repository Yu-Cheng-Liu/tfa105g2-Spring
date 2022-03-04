package web.manager.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import web.manager.dao.impl.FunctionDAO;
import web.manager.entity.FunctionBean;
import web.manager.service.FunctionServiceInterface;

@Service
@Transactional
public class FunctionService implements FunctionServiceInterface {

	private Map<String, String> errorMsgs;

	@Autowired
	private FunctionDAO functionDao;

	@Override
	public List<FunctionBean> select() {
		return functionDao.selectAll();
	}

	@Override
	public FunctionBean insert(FunctionBean functionBean) {
		errorMsgs = new HashMap<String, String>();
		if (functionBean.getFunctionName() == null) {
			errorMsgs.put("insert", "功能名稱空白");
		}

		if (functionDao.select(functionBean) != null) {
			errorMsgs.put("insert", "功能已存在");
		}

		if (!errorMsgs.isEmpty()) {
			return null;
		}
		return functionDao.insert(functionBean);
	}

	@Override
	public boolean delete(FunctionBean functionBean) {
		return functionDao.delete(functionBean);
	}
}
