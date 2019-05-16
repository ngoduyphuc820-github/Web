package ndp.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import ndp.Entity.Town;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class PlaceDAOImpl implements PlaceDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Town> listTownWithCity(int idCity) {
		System.out.println("b");
		Session session;
		List<Town> list = new ArrayList<Town>();
		try {
			session = this.sessionFactory.getCurrentSession();
			Query query = session.createQuery("FROM Town WHERE ID_CITY : idCity");
			query.setParameter("idCity", idCity);
			list = query.list();
		}catch(HibernateException hb) {
			System.out.println("Error: " + hb.getMessage());
			session = sessionFactory.openSession();
		}
		return list;
	}

}
