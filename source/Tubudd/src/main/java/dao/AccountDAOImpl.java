package dao;


import org.hibernate.Session;
import org.springframework.stereotype.Component;

import model.Account;

@Component
public class AccountDAOImpl extends SessionManager implements AccountDAO {

	@Override
	public int registry(Account acc) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		session.save(acc);
		
		session.getTransaction().commit();
		session.close();
		return 1;
	}

}
