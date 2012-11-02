package edu.hust.k54.persistence;

// Generated Nov 2, 2012 10:18:46 AM by Hibernate Tools 4.0.0

import java.util.List;
import javax.naming.InitialContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;

/**
 * Home object for domain model class Hesoluong.
 * @see edu.hust.k54.persistence.Hesoluong
 * @author Hibernate Tools
 */
public class HesoluongHome {

	private static final Log log = LogFactory.getLog(HesoluongHome.class);

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

	public void persist(Hesoluong transientInstance) {
		log.debug("persisting Hesoluong instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(Hesoluong instance) {
		log.debug("attaching dirty Hesoluong instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Hesoluong instance) {
		log.debug("attaching clean Hesoluong instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(Hesoluong persistentInstance) {
		log.debug("deleting Hesoluong instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Hesoluong merge(Hesoluong detachedInstance) {
		log.debug("merging Hesoluong instance");
		try {
			Hesoluong result = (Hesoluong) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Hesoluong findById(java.lang.Integer id) {
		log.debug("getting Hesoluong instance with id: " + id);
		try {
			Hesoluong instance = (Hesoluong) sessionFactory.getCurrentSession()
					.get("edu.hust.k54.hibernate.Hesoluong", id);
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

	public List findByExample(Hesoluong instance) {
		log.debug("finding Hesoluong instance by example");
		try {
			List results = sessionFactory.getCurrentSession()
					.createCriteria("edu.hust.k54.hibernate.Hesoluong")
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
