package web.compdata.dao.impl;

import java.util.List;

import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import web.compdata.dao.CompDataDAOInterface;
import web.compdata.entity.CompData;

@Repository
public class CompDataDAO implements CompDataDAOInterface {
	@PersistenceContext
	private Session session;

	@Override
	public List<CompData> selectATon() {
		String hql = "From CompData";
		List<CompData> compData = (List<CompData>) session.createQuery(hql, CompData.class).list();

		if (compData != null) {
			System.out.println(compData);
			System.out.println("A ton of compDatas have been selected");
		} else {
			System.out.println("Failed to select");
		}

		return compData;

	}

	@Override
	public CompData select(String compAccount) {
		String hql = "From CompData where compAccount = :compAccount";
		CompData cd = (CompData) session.createQuery(hql, CompData.class).setParameter("compAccount", compAccount)
				.uniqueResult();
		if (!compAccount.trim().equals("") && cd != null) {
			System.out.println(cd);
			System.out.println("Select success");
		} else {
			System.out.println("Failed to select");
		}

		return cd;
	}

	@Override
	public CompData insert(CompData compData) {
		if (compData != null && compData.getCompAccount().trim() != "") {
			session.save(compData);
			System.out.println("Insert成功");

		} else {
			System.out.println("請檢查輸入內容");
		}

		return compData;
	}

	@Override
	public boolean delete(String compAccount) {
		String hql = "From CompData where compAccount = :compAccount";

		CompData cd = (CompData) session.createQuery(hql, CompData.class).setParameter("compAccount", compAccount)
				.uniqueResult();

		if (compAccount.trim() != "" && cd != null) {
			session.delete(cd);
			System.out.println("刪除成功");
			return true;

		} else {
			System.out.println("請檢查輸入內容");
		}

		return false;
	}

	@Override
	public boolean update(CompData compData) {
		String hql = "From CompData where compAccount =:compAccount";

		CompData cd = (CompData) session.createQuery(hql, CompData.class)
				.setParameter("compAccount", compData.getCompAccount()).uniqueResult();
		if (cd != null) {
			cd.setCompName(compData.getCompName());
			cd.setCompPhone(compData.getCompPhone());
			cd.setEmail(compData.getEmail());
			cd.setAddress(compData.getAddress());
			cd.setPassword(compData.getPassword());
			cd.setChargePerson(compData.getChargePerson());
		} else {
			System.out.println("Wrong Account");
		}

		if (!compData.getEmail().equals("") && !compData.getPassword().equals("")
				&& !compData.getCompName().equals("")) {
			session.save(cd);
			System.out.println("Update success");
			return true;
		} else {
			System.out.println("Somethings wrong with your input");
		}
		return false;
	}
//	

}
