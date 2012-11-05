package edu.hust.k54.persistence;

// Generated Nov 5, 2012 10:28:09 AM by Hibernate Tools 4.0.0

import java.util.List;
import javax.naming.InitialContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;

/**
 * Home object for domain model class Dienbienhocham.
 * @see edu.hust.k54.persistence.Dienbienhocham
 * @author Hibernate Tools
 */
public class DienbienhochamHome {

	private static final Log log = LogFactory.getLog(DienbienhochamHome.class);

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

	public void persist(Dienbienhocham transientInstance) {
		log.debug("persisting Dienbienhocham instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(Dienbienhocham instance) {
		log.debug("attaching dirty Dienbienhocham instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Dienbienhocham instance) {
		log.debug("attaching clean Dienbienhocham instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(Dienbienhocham persistentInstance) {
		log.debug("deleting Dienbienhocham instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Dienbienhocham merge(Dienbienhocham detachedInstance) {
		log.debug("merging Dienbienhocham instance");
		try {
			Dienbienhocham result = (Dienbienhocham) sessionFactory
					.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Dienbienhocham findById(java.lang.Integer id) {
		log.debug("getting Dienbienhocham instance with id: " + id);
		try {
			Dienbienhocham instance = (Dienbienhocham) sessionFactory
					.getCurrentSession().get(
							"edu.hust.k54.persistence.Dienbienhocham", id);
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

	public List findByExample(Dienbienhocham instance) {
		log.debug("finding Dienbienhocham instance by example");
		try {
			List results = sessionFactory.getCurrentSession()
					.createCriteria("edu.hust.k54.persistence.Dienbienhocham")
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
