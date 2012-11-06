package edu.hust.k54.persistence;

// Generated Nov 6, 2012 9:41:48 PM by Hibernate Tools 4.0.0

import java.util.List;
import javax.naming.InitialContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;

/**
 * Home object for domain model class Sachxuatban.
 * @see edu.hust.k54.persistence.Sachxuatban
 * @author Hibernate Tools
 */
public class SachxuatbanHome {

	private static final Log log = LogFactory.getLog(SachxuatbanHome.class);

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

	public void persist(Sachxuatban transientInstance) {
		log.debug("persisting Sachxuatban instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(Sachxuatban instance) {
		log.debug("attaching dirty Sachxuatban instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Sachxuatban instance) {
		log.debug("attaching clean Sachxuatban instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(Sachxuatban persistentInstance) {
		log.debug("deleting Sachxuatban instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Sachxuatban merge(Sachxuatban detachedInstance) {
		log.debug("merging Sachxuatban instance");
		try {
			Sachxuatban result = (Sachxuatban) sessionFactory
					.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Sachxuatban findById(java.lang.Integer id) {
		log.debug("getting Sachxuatban instance with id: " + id);
		try {
			Sachxuatban instance = (Sachxuatban) sessionFactory
					.getCurrentSession().get(
							"edu.hust.k54.persistence.Sachxuatban", id);
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

	public List findByExample(Sachxuatban instance) {
		log.debug("finding Sachxuatban instance by example");
		try {
			List results = sessionFactory.getCurrentSession()
					.createCriteria("edu.hust.k54.persistence.Sachxuatban")
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
