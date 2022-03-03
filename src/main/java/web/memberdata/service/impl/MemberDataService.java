package web.memberdata.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
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

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Autowired
	private ServletContext servletContext;

	public MemberDataVO register(MemberDataVO member) {
		MemberDataVO result = null;
		if (member != null && member.getUserno() == null) {
			member.setPassword(passwordEncoder.encode(member.getPassword()));

			File file = new File(servletContext.getRealPath("/assets/img/member/member_img.png"));
			byte[] bytefile = null;
			try {
				FileInputStream fis = new FileInputStream(file);
				bytefile = new byte[fis.available()];
				fis.read(bytefile);
				fis.close();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			member.setPicture(bytefile);

			result = memberDataDao.insert(member);
			System.out.println(result);
		}
		return result;
	}

	public MemberDataVO login(String userAccount, String password) {

		MemberDataVO member = memberDataDao.selectByUserAccount(userAccount);
		if (member != null) {
			if (password != null && password.length() != 0) {
				if (passwordEncoder.matches(password, member.getPassword())) {
					return member;
				}
			}
		}
		return null;
	}

	public MemberDataVO changePassword(String userAccount, String oldPassword, String newPassword) {
		MemberDataVO member = this.login(userAccount, oldPassword);
		MemberDataVO result = null;
		if (member != null) {
			member.setPassword(passwordEncoder.encode(newPassword));
			result = memberDataDao.update(member);
			return result;
		}
		return null;
	}

	public MemberDataVO editPersonalProfile(MemberDataVO member) {

		MemberDataVO result = null;
		if (member != null && member.getUserno() != null) {
			System.out.println(memberDataDao);
			System.out.println(member);
			result = memberDataDao.update(member);

		}
		return result;
	}

	public MemberDataVO selectByUserAccount(String userAccount) {
		return memberDataDao.selectByUserAccount(userAccount);
	}

	public MemberDataVO selectByUserNo(Integer userNo) {
		return memberDataDao.selectByUserno(userNo);
	}

	public List<MemberDataVO> findAll() {
		return memberDataDao.selectAll();
	}

	public boolean remove(Integer userNo) {
		return memberDataDao.deleteById(userNo);
	}

}
