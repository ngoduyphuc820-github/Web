package ndp.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import ndp.Entity.Account;

@Repository
@Transactional
public class AccountDAOImpl implements AccountDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public int registry(Account acc) {
		System.out.println("call registry");
		System.out.println(acc.toString());

		System.out.println(this.sessionFactory);
		Session session;
		try {
			// Step-2: Implementation
			session = this.sessionFactory.getCurrentSession();
			session.persist(acc);
		} catch (HibernateException e) {
			// Step-3: Implementation
			session = sessionFactory.openSession();
		}
		return 1;
	}

	@Override
	@SuppressWarnings("unchecked")
	public boolean checkAvailable(Account acc) {
		System.out.println("call check vailable");
		Session session;
		try {
			System.out.println("try...");
			// Step-2: Implementation
			session = this.sessionFactory.getCurrentSession();
			Query query = session.createQuery("FROM Account WHERE USERNAME= :username AND PASSWORD = :password");
			query.setParameter("username", acc.getUsername());
			query.setParameter("password", acc.getPassword());
			List<Account> list = query.list();
			if (list.size() == 0)
				return false;
			System.out.println(list.size());
		} catch (HibernateException he) {
			session = sessionFactory.openSession();
		}
		return true;
	}

	@Override
	public Account getAccount(String username,String password) {
		Account acc = new Account();
		Session session;
		try {
			System.out.println("try...");
			// Step-2: Implementation
			session = this.sessionFactory.getCurrentSession();
			Query query = session.createQuery("FROM Account WHERE USERNAME= :username AND PASSWORD = :password");
			query.setParameter("username", username);
			query.setParameter("password", password );
			List<Account> list = query.list();
			acc = list.get(0);
		} catch (HibernateException he) {
			session = sessionFactory.openSession();
		}
		return acc;
	}
	 @Override
	public void getListAccount() {

	}

	public static void main(String[] args) {
	}
}