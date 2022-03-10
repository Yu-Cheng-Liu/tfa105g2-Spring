package web.memberorder.service;

import java.util.List;

import web.memberdata.entity.MemberDataVO;
import web.memberorder.entity.MemberOrderVO;

public interface MemberOrderServiceInterface {

	
	public abstract MemberOrderVO addOrder(MemberOrderVO vo);
	public abstract List<MemberOrderVO> selectAll();
	public abstract MemberOrderVO selectOne(Integer orderNo);
	public abstract MemberOrderVO selectOrderByUser(Integer userNo);
	public abstract MemberOrderVO updateOrder(MemberOrderVO vo);
	public abstract boolean cancelOrder(MemberOrderVO vo);
	public abstract MemberDataVO updateUserData(MemberDataVO vo);

	
}
