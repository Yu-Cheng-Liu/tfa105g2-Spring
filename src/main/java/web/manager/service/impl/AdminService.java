package web.manager.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import web.manager.dao.impl.AdminDAO;
import web.manager.entity.AdminBean;
import web.manager.service.AdminServiceInterface;
import web.memberdata.entity.MemberDataVO;

@Service
@Transactional
public class AdminService implements AdminServiceInterface {

	private Map<String, String> errorMsgs;

	@Autowired
	private AdminDAO adminDao;

	@Override
	public List<AdminBean> selectAll() {
		return adminDao.selectAll();
	}

	public Map<String, String> getErrorMsgs() {
		return errorMsgs;
	}

	public void setErrorMsgs(Map<String, String> errorMsgs) {
		this.errorMsgs = errorMsgs;
	}

	@Override
	public AdminBean update(AdminBean adminBean) {
		errorMsgs = new HashMap<String, String>();
		if (adminBean.getAdminNo() == null) {
			errorMsgs.put("update", "管理員編號空白");
		}

		if (adminBean.getPassword() == null || adminBean.getPassword().length() > 8) {
			errorMsgs.put("update", "管理員密碼空白or格式錯誤");
		}

		AdminBean temp = adminDao.select(adminBean);
		if (temp == null) {
			errorMsgs.put("update", "此管理員編號不存在");
		}

		if (!errorMsgs.isEmpty()) {
			return null;
		}
		temp.setPassword(adminBean.getPassword());
		return adminDao.update(temp);
	}

	@Override
	public AdminBean insert(AdminBean adminBean) {
		errorMsgs = new HashMap<String, String>();
		if (adminBean.getAccount() == null) {
			errorMsgs.put("insert", "帳號空白");
		} else if (adminDao.select(adminBean) != null) {
			errorMsgs.put("insert", "帳號已存在");
		}

		if (adminBean.getPassword() == null) {
			errorMsgs.put("insert", "密碼空白");
		} else if (adminBean.getPassword().length() > 8) {
			errorMsgs.put("insert", "密碼過長");
		}

		if (!errorMsgs.isEmpty()) {
			return null;
		}
		adminDao.insert(adminBean);
		return adminBean;
	}

	@Override
	public boolean delete(AdminBean adminBean) {
		errorMsgs = new HashMap<String, String>();
		if (adminBean.getAdminNo() != null) {
			adminBean = adminDao.select(adminBean);
			if (adminBean != null) {
				adminDao.delete(adminBean);
				return true;
			}
		}
		return false;
	}

	public AdminBean login(AdminBean adminBean) { //
		AdminBean adminBean1 = adminDao.select(adminBean);
		if (adminBean1 != null) {
			if (adminBean.getPassword().equals(adminBean1.getPassword())) {
				return adminBean1;
			}
		}
		return null;
	}
}

