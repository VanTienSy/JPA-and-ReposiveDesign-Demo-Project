package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import JpaConfig.JpaConfig;
import model.UserApp;

@Transactional
public class UserAppDAOImpl implements IUserAppDAO {		

	@Override
	public void insert(UserApp userApp) {
		EntityManager entityManager = JpaConfig.createEntityManager();

		EntityTransaction trans = entityManager.getTransaction();
		
			try {
			trans.begin();
			entityManager.persist(userApp);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			entityManager.close();
		}
	}

	@Override
	public void update(UserApp userApp) {
		EntityManager entityManager = JpaConfig.createEntityManager();

		EntityTransaction trans = entityManager.getTransaction();

		try {
			trans.begin();
			entityManager.merge(userApp);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			entityManager.close();
		}
	}

	@Override
	public void delete(int id) throws Exception {
		EntityManager entityManager = JpaConfig.createEntityManager();

		EntityTransaction trans = entityManager.getTransaction();

		try {
			trans.begin();
			UserApp userApp = entityManager.find(UserApp.class, id);
			if (userApp != null) {
				entityManager.remove(userApp);
			} else {
				throw new Exception("Not Found UserApp");
			}
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			entityManager.close();
		}
	}

	@Override
	public UserApp findUserAppById(int id) {
		EntityManager entityManager = JpaConfig.createEntityManager();

		UserApp userApp = entityManager.find(UserApp.class, id);
		return userApp;
	}

	@Override
	public List<UserApp> findAllUserApp() {
		EntityManager entityManager = JpaConfig.createEntityManager();

		TypedQuery<UserApp> query = entityManager.createNamedQuery("UserApp.findAll", UserApp.class);
		return query.getResultList();
	}

	@Override
	public List<UserApp> findAll(int page, int pageSize) {
		EntityManager entityManager = JpaConfig.createEntityManager();

		TypedQuery<UserApp> query = entityManager.createNamedQuery("UserApp.findAll", UserApp.class);
		query.setFirstResult(page * pageSize);
		query.setMaxResults(pageSize);

		return query.getResultList();

	}

	@Override
	public List<UserApp> findByUsername(String userName) {
		EntityManager entityManager = JpaConfig.createEntityManager();

		String jpql = "SELECT u FROM UserApp U WHERE u.userame like :userName";

		TypedQuery<UserApp> query = entityManager.createNamedQuery(jpql, UserApp.class);
		query.setParameter("userName", "%" + userName + "%");

		return query.getResultList();
	}

	@Override
	public int count() {
		EntityManager entityManager = JpaConfig.createEntityManager();

		String jpql = "SELECT count(c) FROM UserApp U ";
		Query query = entityManager.createQuery(jpql);
		return ((Long) query.getSingleResult()).intValue();

	}

}
