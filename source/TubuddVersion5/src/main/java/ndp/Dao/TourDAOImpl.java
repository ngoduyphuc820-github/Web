package ndp.Dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import ndp.Entity.BookTour;
import ndp.Entity.Time;
import ndp.Entity.Tour;
import ndp.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class TourDAOImpl implements TourDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public int postTour(Tour tour) {
		Session session;
		System.out.println(tour.toString());
		try {
			session = this.sessionFactory.getCurrentSession();
			session.save(tour);
			return 1;
		} catch (HibernateException hb) {
			System.out.println("error: " + hb.getMessage());
			return 0;
		}
	}

	@Override
	public int bookTour(BookTour bookTour, Time time) {
		Session session;

		try {
			session = this.sessionFactory.getCurrentSession();
			session.save(bookTour);
			
			Query query = session.createQuery("SELECT idBookTour FROM BookTour WHERE ID_TOUR = :id");
			query.setParameter("id", bookTour.getIdTour());
			List<Integer> list = query.list();
			time.setIdBookTour(list.get(0));
			session.save(time);
			return 1;
		} catch (HibernateException hb) {
			System.out.println("error: " + hb.getMessage());
			return 0;
		}
	}

}
