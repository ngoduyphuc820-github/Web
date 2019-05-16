package ndp.Dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import ndp.Entity.Account;
import ndp.Entity.TourGuide;
import ndp.Entity.Tourist;
import ndp.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ProfileDAOImpl implements ProfileDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	@Override
	public int saveTourist(User user, Tourist tourist) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
			 	session.save(user);// problem this
				//get id user vua moi tao dua vao code user => luu vao 
				Query query = session.createQuery("SELECT idUser FROM User WHERE CODE_USER = :code");
				query.setParameter("code", user.getCodeUser());
				List<Integer> list = query.list();
				tourist.setIdTourist(list.get(0));
				session.save(tourist);
				return 1;
		} catch (HibernateException hb) {
			System.out.println("error: " + hb.getMessage());
			return 0;
		}
	}

	@Override
	public int saveTourGuide(User user, TourGuide tourguide) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
			session.save(user);//
			//get user vua moi tao dua vao code user => luu vao table tour gudie
			Query query = session.createQuery("SELECT idUser FROM User WHERE CODE_USER = :code");
			query.setParameter("code", user.getCodeUser());
			List<Integer> list = query.list();
			tourguide.setIdTourGuide(list.get(0));
			session.save(tourguide);
			return 1;
		} catch (HibernateException hb) {
			System.out.println("error: " + hb.getMessage());
			return 0;
		}
	}

	@Override
	public void saveUser(User user) {
		Session session;
		try {
			session = this.sessionFactory.getCurrentSession();
			session.save(user);
		} catch (HibernateException hb) {
			System.out.println("error: " + hb.getMessage());
		}
		
	}

}
