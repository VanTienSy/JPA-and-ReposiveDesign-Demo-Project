package JpaConfig;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JpaConfig {
	private static final String PERSISTENCE_UNIT_NAME = "JspMavenDemo";
	private static EntityManagerFactory emf;

	public static EntityManager createEntityManager() {
		
		return getEntityManagerFactory().createEntityManager();
		
	}

	private static EntityManagerFactory getEntityManagerFactory() {
		
		if (emf == null) {
			emf = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
		}

		return emf;
	}
	
}
