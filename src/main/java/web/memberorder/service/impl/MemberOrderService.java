package web.memberorder.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import web.memberdata.entity.MemberDataVO;
import web.memberorder.dao.MemberOrderDAOInterface;
import web.memberorder.entity.MemberOrderVO;
import web.memberorder.service.MemberOrderServiceInterface;

@Service
@Transactional
public class MemberOrderService implements MemberOrderServiceInterface{

	@Autowired
	private MemberOrderDAOInterface memberOrderDAOInterface;
//	@Autowired
//	private MemberDataDAO memberDataDao;
	
	
	@Override
	public MemberOrderVO addOrder(MemberOrderVO vo) {
		MemberOrderVO result = null;
		if(vo!=null) {
			result = memberOrderDAOInterface.addOrder(vo);
		}
		return result;
	}
	
	@Override
	public List<MemberOrderVO> selectAll(MemberOrderVO vo) {
		List<MemberOrderVO> result = null;
		if(vo!=null) {
			result = memberOrderDAOInterface.selectAll();
		}
		return result;
	}
	
	@Override
	public MemberOrderVO selectOrderByUser(Integer userNo) {
		if(userNo != null) {
			MemberOrderVO result = memberOrderDAOInterface.selectOrderByUser(userNo);
			return result;
		}
		return null;
	}
	
	@Override
	public MemberOrderVO updateOrder(MemberOrderVO vo) {
		if(vo!=null && vo.getOrderNo()!=null) {
			vo.setDeliveryAddress(vo.getDeliveryAddress());
			vo.setDonate(vo.getDonate());
			memberOrderDAOInterface.update(vo);
			return vo;
		}
		return null;
	}
	
	@Override
	public boolean cancelOrder(MemberOrderVO vo) {
		boolean result = false;
		if(vo!=null&& vo.getOrderNo()!=null) {
			result = memberOrderDAOInterface.cancelOrder(vo.getOrderNo());
		}
		return result;
	}
	
	@Override
	public MemberDataVO updateUserData(MemberDataVO vo) {
		if(vo!=null&&vo.getUserno()!=null) {
			vo.setAddress(vo.getAddress());
			vo.setUsername(vo.getUsername());
			memberOrderDAOInterface.updateUser(vo);
			return vo;
		}
		return null;
	}

	@Override
	public MemberOrderVO selectOne(Integer orderNo) {
		if(orderNo != null) {
			MemberOrderVO result = memberOrderDAOInterface.selectOne(orderNo);
			return result;
		}
		return null;
	}

}
