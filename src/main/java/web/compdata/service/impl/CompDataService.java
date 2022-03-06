package web.compdata.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
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
	private PasswordEncoder passwordEncoder;

	@Autowired
	private CompDataDAOInterface compDataDAOi;
	
	String passwordRegex = "(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=\\S+$).{8,}";

	public Map<String, String> getErrors() {
		return errors;

	}
//================================================== Login =========================================================	

	public CompData login(String compAccount, String password) {
		
		
		errors = new HashMap<String, String>();

		CompData cd = compDataDAOi.select(compAccount);
		
		if (cd != null && !"".equals(password)) {
			
			boolean ppp = passwordEncoder.matches(password, cd.getPassword());
			
			if (ppp) {
				
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
			if (!passwordEncoder.matches(oldpass, cd.getPassword())) {
				errors.put("oldPass", "原始密碼輸入錯誤");
			}
			if ("".equals(newpass.trim())) {
				errors.put("newPass", "新密碼不可為空白");
			}
			if (passwordEncoder.matches(newpass, cd.getPassword())) {
				errors.put("samePass", "密碼未更改");
			}
			if(!newpass.matches(passwordRegex)) {
				errors.put("newPass", "密碼至少8個字,並包含大寫,小寫,數字");
			}
			if ("".equals(oldpass.trim())) {
				errors.put("oldPass", "舊密碼不可為空白");
			}
			if (!newpass.equals(confirm.trim())) {
				errors.put("newPass", "兩次新密碼輸入不相同");
			}
			
			System.out.println(errors);
			if (errors.size() == 0) {
				cd.setPassword(passwordEncoder.encode(newpass));
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
//====================================Auto Generate new password when user forgets password=============================
	
	
	public boolean changePasswordByAuthCode(String compAccount, String oldpass, String newpass, String confirm) {
		CompData cd = compDataDAOi.select(compAccount);
		
		errors= new HashMap<String, String>();
		if (cd != null) {
			if ("".equals(newpass.trim())) {
				errors.put("newPass", "新密碼不可為空白");
			}
			
			System.out.println(errors);
			if (errors.size() == 0) {
				cd.setPassword(passwordEncoder.encode(newpass));
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
		
		CompData edit = compDataDAOi.select(cd.getCompAccount());
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
				edit.setVerify(cd.getVerify());
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
		
		
		errors= new HashMap<String, String>();

		CompData check = compDataDAOi.select(cd.getCompAccount());
		if (check != null) {
			errors.put("RcompAccount", "帳號已被使用");
		}else {
			if ("".equals(cd.getCompAccount().trim())) {
				errors.put("RcompAccount", "帳號不可為空白");
			}
			if ("".equals(cd.getCompName().trim())) {
				errors.put("RcompName", "廠商名稱不可為空白");
			}
			if ("".equals(cd.getEmail().trim())) {
				errors.put("Remail", "電子郵件不可為空白");
			}
			if ("".equals(cd.getPassword().trim())) {
				errors.put("Rpassword", "密碼不可為空白");
			}
			if (!cd.getPassword().matches(passwordRegex)) {
				errors.put("Rpassword", "密碼至少8個字,並包含大寫,小寫,數字");
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
//=============================================== find certain email ===================================================
	
	public CompData findCertainEmail(String email) {
		
		if(!"".equals(email.trim())) {
		
			CompData cd = compDataDAOi.selectByEmail(email);
			if(cd!=null) {
				return cd;
			}else {
				errors.put("noSuchMail", "找不到此email , 請檢察輸入內容或重新註冊");
				return null;
			}
			
		}
		
		return null;
		
	}
	
	public CompData findCertainAccount(String compAccount) {
		
		
		if(!"".equals(compAccount.trim())) {
			
			CompData cd = compDataDAOi.select(compAccount);
			if(cd!=null) {
				return cd;
			}else {
				return null;
			}
			
		}
		
		return null;
		
	}
	
	
	public String verifiedOrNot(CompData cd) {
		
		System.out.println(cd);
		
		System.out.println(cd.getVerify());
		
		if("1".equals(cd.getVerify())) {
//			return "歡迎來到龘虤！　\r\n 恭喜您已完成email驗證，祝您斂財愉快";
			return "0";
		}else {
			
//			return "歡迎來到龘虤！ \r\n 您的email驗證尚未完成，將無法使用上架功能，是否現在驗證？";
			return "1";
		}
	}
	
	
}
