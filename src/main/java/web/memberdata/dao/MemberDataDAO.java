package web.memberdata.dao;

import java.util.List;

import web.memberdata.entity.MemberDataVO;

public interface MemberDataDAO {
	public abstract MemberDataVO selectByUserno(Integer userNo);
	
	public abstract MemberDataVO selectByUserAccount(String userAccount);

	public abstract List<MemberDataVO> selectAll();

	public abstract MemberDataVO insert(MemberDataVO memberDataVO);

	public abstract MemberDataVO update(MemberDataVO memberDataVO);

	public abstract boolean deleteById(Integer userNo);

}
