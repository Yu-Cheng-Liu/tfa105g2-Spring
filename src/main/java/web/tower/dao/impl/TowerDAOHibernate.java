package web.tower.dao.impl;

import java.util.List;

import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import web.tower.dao.TowerDAO;
import web.tower.entity.TowerVO;


@Repository
public class TowerDAOHibernate implements TowerDAO {
	@PersistenceContext
		private Session session;
//		public TowerDAOHibernate(SessionFactory sessionFactory) {
//			this.sessionFactory=sessionFactory;
//   }
//		public Session getSession() {
//			return sessionFactory.getCurrentSession();
//		}
		public static void main(String[]args) {
//			SessionFactory sessionFactory=HibernateUtil.getSessionfactory();
//			Session session=sessionFactory.getCurrentSession();
//			Transaction transaction=session.beginTransaction();
//			
////			TowerDAO dao=new TowerDAOHibernate(sessionFactory);
//			List<TowerVO>beans=dao.select();
//			System.out.println("bean="+beans);
//			
//			transaction.commit();
//			session.close();
//			sessionFactory.close();
		}
		@Override
		public TowerVO select(Integer towerNo) {
			if(towerNo!=null) {
				return this.session.get(TowerVO.class, towerNo);
			}
			return null;
		}
@Override
		public List<TowerVO> select() {
			return this.session.createQuery("FROM TowerVO",TowerVO.class).list();
			
		}
		@Override
		public TowerVO insert(TowerVO bean) {
			if(bean!=null&&bean.getTowerNo()!=null) {
				TowerVO temp=this.session.get(TowerVO.class, bean.getTowerNo());
			if( temp==null) {
				session.save(bean);
				return bean;
			}
		}
			return null;
		}
		@Override
		public TowerVO update(Integer towerNo, Integer userNo, String deadName) {
			if(towerNo!=null){
				TowerVO temp=this.session.get(TowerVO.class,towerNo);
				if(temp!=null) {
					temp.setTowerNo(towerNo);
					temp.setUserNo(userNo);
					temp.setDeadName(deadName);
					return temp;
				}
			}
			return null;
		}
		@Override
		public boolean delete(Integer towerNo) {
			if(towerNo!=null) {
				TowerVO temp=this.session.get(TowerVO.class, towerNo);
				if(temp!=null) {
					this.session.delete(temp);
					return true;
				}
			}
			return false;
		}
		
}
