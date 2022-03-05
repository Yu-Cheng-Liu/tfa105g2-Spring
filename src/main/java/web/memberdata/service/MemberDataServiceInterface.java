package web.memberdata.service;

import java.util.List;

import web.memberdata.entity.MemberDataVO;

public interface MemberDataServiceInterface {
	
	public MemberDataVO register(MemberDataVO member);

	public MemberDataVO login(String userAccount, String password);

	public MemberDataVO changePassword(String userAccount, String oldPassword, String newPassword);

	public MemberDataVO changePasswordBySystem(String userAccount, String temPassword);
	
	public MemberDataVO editPersonalProfile(MemberDataVO member);

	public MemberDataVO selectByUserAccount(String userAccount);
	
	public MemberDataVO selectByUserNo(Integer userNo);
	
	public MemberDataVO selectByEmail(String email);

	public List<MemberDataVO> findAll();

	public boolean remove(Integer userNo);
}
