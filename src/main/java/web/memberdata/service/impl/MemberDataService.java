package web.memberdata.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import web.memberdata.dao.MemberDataDAO;
import web.memberdata.entity.MemberDataVO;
import web.memberdata.service.MemberDataServiceInterface;
@Service
@Transactional
public class MemberDataService implements MemberDataServiceInterface {
	
	@Autowired
	private MemberDataDAO memberDataDao;
	
	
	public MemberDataVO register(MemberDataVO member) {
		MemberDataVO result = null;
		if(member!=null &&member.getUserno()==null) {
			result = memberDataDao.insert(member);
		}
		return result;
	}
	
	public MemberDataVO login(String userAccount, String password) {
		
		MemberDataVO member = memberDataDao.selectByUserAccount(userAccount);
		if(member!=null) {
			if(password!=null && password.length()!=0) {
				if(password.equals(member.getPassword())) {
					return member;
				}
			}
		}
		return null;
	}
	
	public MemberDataVO changePassword(String userAccount, String oldPassword, String newPassword) {
		MemberDataVO member = this.login(userAccount, oldPassword);
		MemberDataVO result = null;
		if(member!=null) {
			member.setPassword(newPassword);
			result = memberDataDao.update(member);
			return result;
		}
		return null;
	}
	
	public MemberDataVO editPersonalProfile(MemberDataVO member) {

		MemberDataVO result = null;
			if(member != null && member.getUserno()!=null) {

				result = memberDataDao.update(member);
			}						
			return result;
	}
	
	public MemberDataVO selectByUserAccount(String userAccount) {
		return memberDataDao.selectByUserAccount(userAccount);
	}
	
	public List<MemberDataVO> findAll(){
		return memberDataDao.selectAll();
	}
	
	public boolean remove(Integer userNo){
		return memberDataDao.deleteById(userNo);
	}
	
}
