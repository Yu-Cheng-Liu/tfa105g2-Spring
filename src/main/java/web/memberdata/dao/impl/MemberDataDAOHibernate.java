package web.memberdata.dao.impl;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import web.memberdata.dao.MemberDataDAO;
import web.memberdata.entity.MemberDataVO;

@Repository
public class MemberDataDAOHibernate implements MemberDataDAO {
	@PersistenceContext
	private Session session;

	@Override
	public MemberDataVO selectByUserno(Integer userNo) {
		if (userNo != null) {
			return session.get(MemberDataVO.class, userNo);
		}
		return null;
	}

	@Override
	public MemberDataVO selectByUserAccount(String userAccount) {
		return session.createQuery("from MemberDataVO where user_account = :uaccount", MemberDataVO.class)
				.setParameter("uaccount", userAccount).uniqueResult();
	}

	@Override
	public MemberDataVO selectByEmail(String email) {
		return session.createQuery("from MemberDataVO where email = :email", MemberDataVO.class)
				.setParameter("email", email).uniqueResult();
	}

	@Override
	public List<MemberDataVO> selectAll() {
		return session.createQuery("FROM MemberDataVO", MemberDataVO.class).list();
	}

	@Override
	public MemberDataVO insert(MemberDataVO memberDataVO) {
		if (memberDataVO != null && memberDataVO.getUserno() == null) {
			session.save(memberDataVO);
			return memberDataVO;
		}
		return null;
	}

	@Override
	public MemberDataVO update(MemberDataVO memberDataVO) {
		String hql = "from MemberDataVO where user_account = :uaccount";

		MemberDataVO member = (MemberDataVO) session.createQuery(hql, MemberDataVO.class)
				.setParameter("uaccount", memberDataVO.getUseraccount()).uniqueResult();
		if (member != null) {
			member.setUsername(memberDataVO.getUsername());
			member.setUseraccount(memberDataVO.getUseraccount());
			member.setPhone(memberDataVO.getPhone());
			member.setEmail(memberDataVO.getEmail());
			member.setAddress(memberDataVO.getAddress());
			member.setGender(memberDataVO.getGender());
			member.setBirthday(memberDataVO.getBirthday());
			member.setPicture(memberDataVO.getPicture());
			member.setPassword(memberDataVO.getPassword());
			member.setCreatedate(memberDataVO.getCreatedate());
			member.setLastupdatedatetime(LocalDateTime.now());
			member.setVerifystatus(memberDataVO.getVerifystatus());
			return member;
		}
		return null;
	}

	@Override
	public boolean deleteById(Integer userNo) {
		if (userNo != null) {
			MemberDataVO member = session.get(MemberDataVO.class, userNo);
			if (member != null) {
				session.delete(member);
				return true;
			}
		}
		return false;
	}

}
