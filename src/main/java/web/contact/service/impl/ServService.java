package web.contact.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import web.contact.dao.ServiceDAOInterface;
import web.contact.entity.impl.ServiceBean;
import web.contact.service.ServServiceInterface;
import web.tools.SendMail;

@Service
@Transactional
public class ServService implements ServServiceInterface {

	private Map<String, String> errorMsgs;

	@Autowired
	private ServiceDAOInterface serviceDAO;

	public List<ServiceBean> select() {
		return serviceDAO.select();
	}

	public List<ServiceBean> select(Date startDate, Date endDate) {
		errorMsgs = new HashMap<String, String>();
		if (startDate == null && endDate == null) {
			this.errorMsgs.put("date", "請選擇日期");
		} else if (startDate == null) {
			this.errorMsgs.put("date", "請選擇開始日期");
		} else if (endDate == null) {
			this.errorMsgs.put("date", "請選擇結束日期");
		} else if (startDate.after(endDate)) {
			this.errorMsgs.put("date", "開始日不可大於結束日");
		} else {
			return serviceDAO.select(startDate, endDate);
		}
		return null;
	}

	public ServiceBean insert(ServiceBean bean) {
		errorMsgs = new HashMap<String, String>();
		String regex = "^\\w{1,63}@[a-zA-Z0-9]{2,63}\\.[a-zA-Z]{2,63}(\\.[a-zA-Z]{2,63})?$";

		Pattern pattern = Pattern.compile(regex);
		System.out.println(bean.getEmail());
		System.out.println(pattern.matcher(bean.getEmail()).find());
		if ("".equals(bean.getCustomerName())) {
			this.errorMsgs.put("name", "姓名不可空白");
		}
		if ("".equals(bean.getEmail())) {
			this.errorMsgs.put("email", "信箱不可空白");
		} else if (!pattern.matcher(bean.getEmail()).find()) {
			this.errorMsgs.put("email", "信箱格式不正確");
		}
		if ("".equals(bean.getCustomerContent())) {
			this.errorMsgs.put("content", "意見不可空白");
		}
		if (!this.errorMsgs.isEmpty()) {
			return null;
		} else {
			return this.serviceDAO.insert(bean);
		}
	}

	public ServiceBean sendEmail(ServiceBean serviceBean, String replySubject, String replyContent) {
		errorMsgs = new HashMap<String, String>();
		ServiceBean result = null;
		if ("".equals(replySubject)) {
			this.errorMsgs.put("subject", "主旨不可空白");
		}
		if ("".equals(replyContent)) {
			this.errorMsgs.put("content", "內容不可空白");
		}
		if (this.errorMsgs.isEmpty() && serviceBean != null && serviceBean.getTaskNo() != null) {
			ServiceBean temp = this.serviceDAO.select(serviceBean);
			if (temp != null) {
				SendMail mail = new SendMail(temp.getEmail(), replySubject, replyContent);
				if (mail.send()) {
					result = serviceDAO.update(serviceBean);
				}
			}
		}
		return result;
	}

	public Map<String, String> getErrors() {
		return errorMsgs;
	}
}
