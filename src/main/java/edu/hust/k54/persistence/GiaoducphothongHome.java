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
 * Home object for domain model class Giaoducphothong.
 * @see edu.hust.k54.persistence.Giaoducphothong
 * @author Hibernate Tools
 */
public class GiaoducphothongHome {

	private static final Log log = LogFactory.getLog(GiaoducphothongHome.class);

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

	public void persist(Giaoducphothong transientInstance) {
		log.debug("persisting Giaoducphothong instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(Giaoducphothong instance) {
		log.debug("attaching dirty Giaoducphothong instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Giaoducphothong instance) {
		log.debug("attaching clean Giaoducphothong instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(Giaoducphothong persistentInstance) {
		log.debug("deleting Giaoducphothong instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Giaoducphothong merge(Giaoducphothong detachedInstance) {
		log.debug("merging Giaoducphothong instance");
		try {
			Giaoducphothong result = (Giaoducphothong) sessionFactory
					.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Giaoducphothong findById(java.lang.Integer id) {
		log.debug("getting Giaoducphothong instance with id: " + id);
		try {
			Giaoducphothong instance = (Giaoducphothong) sessionFactory
					.getCurrentSession().get(
							"edu.hust.k54.hibernate.Giaoducphothong", id);
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

	public List findByExample(Giaoducphothong instance) {
		log.debug("finding Giaoducphothong instance by example");
		try {
			List results = sessionFactory.getCurrentSession()
					.createCriteria("edu.hust.k54.hibernate.Giaoducphothong")
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
