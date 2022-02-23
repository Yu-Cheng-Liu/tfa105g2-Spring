package web.compdata.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import web.compdata.dao.CompDataDAOInterface;
import web.compdata.entity.CompData;
import web.compdata.service.CompDataServiceInterface;

@Service
@Transactional
public class CompDataService implements CompDataServiceInterface {

	public static Map<String, String> errors ;

	@Autowired
	private CompDataDAOInterface compDataDAOi;

	public Map<String, String> getErrors() {
		return errors;

	}
//================================================== Login =========================================================	

	public CompData login(String compAccount, String password) {
		
		
		errors = new HashMap<String, String>();

		CompData cd = compDataDAOi.select(compAccount);
		
		if (cd != null && !"".equals(password)) {
			String pass = cd.getPassword();
//			System.out.println("input pass :" +password);
//			System.out.println("original Pass" + pass);
			if (password.equals(pass)) {
//				System.out.println("Login succeed");
				return cd;
			} else {
				errors.put("password", "密碼錯誤");
			
			}
		} else {

			errors.put("password", "登入失敗請檢查輸入內容");
			return null;
		}
//		System.out.println(cd);
//		System.out.println(errors);
		return null;

	}

//==================================================change Password=========================================================	

	public boolean changePassword(String compAccount, String oldpass, String newpass, String confirm) {
		CompData cd = compDataDAOi.select(compAccount);
		
		errors= new HashMap<String, String>();
		
		if (cd != null) {
			if (!cd.getPassword().equals(oldpass)) {
				errors.put("oldPass", "原始密碼輸入錯誤");
			}
			if ("".equals(newpass.trim())) {
				errors.put("newPass", "新密碼不可為空白");
			}
			if (newpass.equals(oldpass.trim())) {
				errors.put("samePass", "密碼未更改");
			}
			if ("".equals(oldpass.trim())) {
				errors.put("oldPass", "舊密碼不可為空白");
			}
			if (!newpass.equals(confirm.trim())) {
				errors.put("newPass", "兩次新密碼輸入不相同");
			}
			if (errors.size() == 0) {
				cd.setPassword(newpass);
				compDataDAOi.update(cd);
				if (compDataDAOi.update(cd)) {
					return true;
				} 
				}

			}else {
					return false;
		}
		return false;
	}

//==================================================Edit profile=========================================================	

	public boolean editPersonalProfile(CompData cd) {

		// compName , chargePerson , email , phone , address;
		errors= new HashMap<String, String>();
		
		CompData edit = this.login(cd.getCompAccount(), cd.getPassword());
		if (edit != null) {
			if ("".equals(cd.getCompName().trim())) {
				errors.put("compName", "公司名稱不可為空白");
			}
			if ("".equals(cd.getChargePerson().trim())) {
				errors.put("chargePerson", "負責人不可為空白");
			}
			if ("".equals(cd.getEmail().trim())) {
				errors.put("email", "電子郵件不可為空白");
			}

			if (errors.size() == 0) {
				edit.setCompName(cd.getCompName());
				edit.setChargePerson(cd.getChargePerson());
				edit.setEmail(cd.getEmail());
				edit.setCompPhone(cd.getCompPhone());
				edit.setAddress(cd.getAddress());
				return compDataDAOi.update(edit);
			} else {
				return false;
			}

		} else {
			errors.put("compName", "請重新登入");
			return false;
		}

	}

//==================================================Register=========================================================	
	public CompData Register(CompData cd) {
		String passwordRegex = "(?=.*[0-9])(?=.*[a-z])(?=\\S+$).{8,}";
		
		errors= new HashMap<String, String>();

		CompData check = compDataDAOi.select(cd.getCompAccount());
//		System.out.println(check);
//		System.out.println(errors);
		if (check != null) {
			errors.put("compAccount", "帳號已被使用");
		}else {
			if ("".equals(cd.getCompAccount().trim())) {
				errors.put("compAccount", "帳號不可為空白");
			}
			if ("".equals(cd.getCompName().trim())) {
				errors.put("compName", "廠商名稱不可為空白");
			}
			if ("".equals(cd.getEmail().trim())) {
				errors.put("email", "電子郵件不可為空白");
			}
			if ("".equals(cd.getPassword().trim())) {
				errors.put("password", "密碼不可為空白");
			}
			if (!cd.getPassword().matches(passwordRegex)) {
				errors.put("password", "密碼至少8個字,並包含小寫及數字");
			}
			if (errors.size() == 0) {
				CompData result = compDataDAOi.insert(cd);
				return result;
			} else {
				return null;
			}
		}
		return null;

		

	}

}
