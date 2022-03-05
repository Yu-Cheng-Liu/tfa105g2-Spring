package web.tower.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import web.tower.dao.TowerDAO;
import web.tower.dao.impl.TowerDAOHibernate;
import web.tower.entity.TowerVO;
import web.tower.service.TowerService;
@Service
@Transactional
public class TowerServiceImpl implements TowerService{
	   @Autowired
		private TowerDAO towerDao;
		public TowerServiceImpl(TowerDAO towerDao) {
			this.towerDao=towerDao;
		}
//		public static void main(String[]ages) {
//			SessionFactory sessionFactory=HibernateUtil.getSessionfactory();
//			Session session=sessionFactory.getCurrentSession();
//			Transaction transaction=session.beginTransaction();
//			
//			TowerServiceImpl towerService=new TowerServiceImpl(new TowerDAOHibernate(sessionFactory));
//			List<TowerVO>selects=towerService.select(null);
//			System.out.println("selects="+selects);
//			transaction.commit();
//			session.close();
//			sessionFactory.close();
//		}
		public List<TowerVO> selectAll() {
			return towerDao.select();
		}
		
		
		
		public List<TowerVO> selectAllByUserNo(Integer userNo) {
			
			List <TowerVO> list = towerDao.selectByUser(userNo);
			
			return list;
		}
		
		
		public List<TowerVO> select(TowerVO bean) {
			List<TowerVO> result=null;
			if(bean!=null&&bean.getTowerNo()!=null&&bean.getTowerNo().equals(0)) {
				TowerVO temp=towerDao.select(bean.getTowerNo());
				if(temp!=null) {
					result=new ArrayList<TowerVO>();
					result.add(temp);
				}
			}else {
				result=towerDao.select();
			}
			return null;
		}
		public TowerVO insert(TowerVO bean) {
			TowerVO result=null;

			result = towerDao.insert(bean);

			return result;
		}
		public TowerVO update (TowerVO bean) {
			TowerVO result=null;
			if(bean!=null&&bean.getTowerNo()!=null) {
				result=towerDao.update(bean.getTowerNo(),bean.getUserNo(),bean.getDeadName());
			}
			return result;
		}
		public boolean delete(TowerVO bean) {
			boolean result=false;
			if(bean!=null&&bean.getTowerNo()!=null) {
				result=towerDao.delete(bean.getTowerNo());
			}
			return result;
		}
}
