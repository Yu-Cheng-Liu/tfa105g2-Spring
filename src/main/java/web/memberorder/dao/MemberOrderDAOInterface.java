package web.memberorder.dao;

import java.util.List;

import web.memberdata.entity.MemberDataVO;
import web.memberorder.entity.MemberOrderVO;

public interface MemberOrderDAOInterface {
	
	public abstract MemberOrderVO selectOrderByUser(Integer userNo);
	public abstract MemberDataVO selectUserData(Integer userNo);
	public abstract MemberOrderVO selectOne(Integer orderNo);
	public abstract List<MemberOrderVO> selectAll();
	public abstract MemberOrderVO addOrder(MemberOrderVO vo);
	public abstract MemberDataVO updateUser(MemberDataVO vo);
	public abstract MemberOrderVO update(MemberOrderVO vo);
	public abstract boolean cancelOrder(Integer orderNo);
}
