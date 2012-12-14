package edu.hust.k54.persistence;

// Generated Nov 26, 2012 7:17:42 PM by Hibernate Tools 4.0.0

import java.util.List;
import javax.naming.InitialContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;

/**
 * Home object for domain model class Soyeulylich.
 * @see edu.hust.k54.persistence.Soyeulylich
 * @author Hibernate Tools
 */
public class SoyeulylichHome {

	private static final Log log = LogFactory.getLog(SoyeulylichHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext()
					.lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException(
					"Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(Soyeulylich transientInstance) {
		log.debug("persisting Soyeulylich instance");
		try {
			sessionFactory.openSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(Soyeulylich instance) {
		log.debug("attaching dirty Soyeulylich instance");
		try {
			sessionFactory.openSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Soyeulylich instance) {
		log.debug("attaching clean Soyeulylich instance");
		try {
			sessionFactory.openSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(Soyeulylich persistentInstance) {
		log.debug("deleting Soyeulylich instance");
		try {
			sessionFactory.openSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Soyeulylich merge(Soyeulylich detachedInstance) {
		log.debug("merging Soyeulylich instance");
		try {
			Soyeulylich result = (Soyeulylich) sessionFactory
					.openSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Soyeulylich findById(java.lang.Integer id) {
		log.debug("getting Soyeulylich instance with id: " + id);
		try {
			Soyeulylich instance = (Soyeulylich) sessionFactory
					.openSession().get(
							"edu.hust.k54.persistence.Soyeulylich", id);
			if (instance == null) {
				log.debug("get successful, no instance found");
			} else {
				log.debug("get successful, instance found");
			}
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Soyeulylich instance) {
		log.debug("finding Soyeulylich instance by example");
		try {
			List results = sessionFactory.openSession()
					.createCriteria("edu.hust.k54.persistence.Soyeulylich")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
