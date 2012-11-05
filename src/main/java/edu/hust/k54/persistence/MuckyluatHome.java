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
 * Home object for domain model class Muckyluat.
 * @see edu.hust.k54.persistence.Muckyluat
 * @author Hibernate Tools
 */
public class MuckyluatHome {

	private static final Log log = LogFactory.getLog(MuckyluatHome.class);

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

	public void persist(Muckyluat transientInstance) {
		log.debug("persisting Muckyluat instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(Muckyluat instance) {
		log.debug("attaching dirty Muckyluat instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Muckyluat instance) {
		log.debug("attaching clean Muckyluat instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(Muckyluat persistentInstance) {
		log.debug("deleting Muckyluat instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Muckyluat merge(Muckyluat detachedInstance) {
		log.debug("merging Muckyluat instance");
		try {
			Muckyluat result = (Muckyluat) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Muckyluat findById(java.lang.Integer id) {
		log.debug("getting Muckyluat instance with id: " + id);
		try {
			Muckyluat instance = (Muckyluat) sessionFactory.getCurrentSession()
					.get("edu.hust.k54.persistence.Muckyluat", id);
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

	public List findByExample(Muckyluat instance) {
		log.debug("finding Muckyluat instance by example");
		try {
			List results = sessionFactory.getCurrentSession()
					.createCriteria("edu.hust.k54.persistence.Muckyluat")
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
