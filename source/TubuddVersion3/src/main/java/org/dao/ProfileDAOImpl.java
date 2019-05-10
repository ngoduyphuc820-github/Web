package org.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.model.TourGuide;
import org.model.Tourist;
import org.model.User;
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
			int number = (int) session.save(user);//
			if (number == 1) {
				session.save(tourist);
				return 1;
			}
		} catch (HibernateException hb) {
			System.out.println("error: " + hb.getMessage());
		}
		return 0;
	}

	@Override
	public int saveTourGuide(User user, TourGuide tourguide) {
		// TODO Auto-generated method stub
		return 0;
	}

}
