package web.memberorder.dao.impl;

import java.util.List;

import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import web.memberdata.entity.MemberDataVO;
import web.memberorder.dao.MemberOrderDAOInterface;
import web.memberorder.entity.MemberOrderVO;

@Repository
public class MemberOrderDAO implements MemberOrderDAOInterface {

	@PersistenceContext
	private Session session;

	// 以會員查詢訂單
	@Override
	public MemberOrderVO selectOrderByUser(Integer userNo) {
		String hql = "FROM MemberOrderVO where userNo=: userNo";
		MemberOrderVO memberOrderVO = session.createQuery(hql, MemberOrderVO.class)
				.setParameter("userNo", userNo).uniqueResult();
		return memberOrderVO;
	}

	// 查詢所有訂單
	@Override
	public List<MemberOrderVO> selectAll() {
		return session.createQuery("FROM MemberOrderVO", MemberOrderVO.class).list();
	}

	// 新增訂單
	@Override
	public MemberOrderVO addOrder(MemberOrderVO vo) {
		if (vo != null) {
			session.save(vo);
		}
		return vo;
	}

	// 修改訂單
	@Override
	public MemberOrderVO update(MemberOrderVO vo) {
		if (vo != null && vo.getOrderNo()!=null) {
			MemberOrderVO temp = session.get(MemberOrderVO.class, vo.getOrderNo());
			if (temp != null) {
				temp.setDeliveryAddress(vo.getDeliveryAddress());
				temp.setDeliveryStatusCode(vo.getDeliveryTypeCode());
				temp.setDeliveryTypeCode(vo.getDeliveryTypeCode());
				temp.setDonate(vo.getDonate());
				temp.setTotal(vo.getTotal());
				return temp;
			}
		}
		return null;
	}

	@Override
	public MemberDataVO selectUserData(Integer userNo) {
		String hql ="FROM MemberDataVO where userNo=:userNo";
		MemberDataVO memVO = session.createQuery(hql,MemberDataVO.class)
				.setParameter("userNo",userNo).uniqueResult();
		return memVO;
	}

	@Override
	public MemberDataVO updateUser(MemberDataVO vo) {
		if(vo!=null && vo.getUserno()!=null) {
			MemberDataVO temp = session.get(MemberDataVO.class, vo.getUsername());
			if(temp!=null) {
				temp.setUsername(vo.getUsername());
				temp.setAddress(vo.getAddress());
			}
			
		}
		return null;
	}


	@Override
	public boolean cancelOrder(Integer orderNo) {
		if(orderNo!=null) {
			MemberOrderVO temp = session.get(MemberOrderVO.class, orderNo);
			if(temp!=null) {
				session.delete(temp);
				return true;
			}
		}
		return false;
	}

	@Override
	public MemberOrderVO selectOne(Integer orderNo) {
		String hql = "FROM MemberOrderVO where orderNo=: orderNo";
		MemberOrderVO memberOrderVO = session.createQuery(hql, MemberOrderVO.class)
				.setParameter("orderNo", orderNo).uniqueResult();
		return memberOrderVO;
	}

}
