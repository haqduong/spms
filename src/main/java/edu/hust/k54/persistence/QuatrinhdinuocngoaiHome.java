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
 * Home object for domain model class Quatrinhdinuocngoai.
 * @see edu.hust.k54.persistence.Quatrinhdinuocngoai
 * @author Hibernate Tools
 */
public class QuatrinhdinuocngoaiHome {

	private static final Log log = LogFactory
			.getLog(QuatrinhdinuocngoaiHome.class);

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

	public void persist(Quatrinhdinuocngoai transientInstance) {
		log.debug("persisting Quatrinhdinuocngoai instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(Quatrinhdinuocngoai instance) {
		log.debug("attaching dirty Quatrinhdinuocngoai instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Quatrinhdinuocngoai instance) {
		log.debug("attaching clean Quatrinhdinuocngoai instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(Quatrinhdinuocngoai persistentInstance) {
		log.debug("deleting Quatrinhdinuocngoai instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Quatrinhdinuocngoai merge(Quatrinhdinuocngoai detachedInstance) {
		log.debug("merging Quatrinhdinuocngoai instance");
		try {
			Quatrinhdinuocngoai result = (Quatrinhdinuocngoai) sessionFactory
					.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Quatrinhdinuocngoai findById(java.lang.Integer id) {
		log.debug("getting Quatrinhdinuocngoai instance with id: " + id);
		try {
			Quatrinhdinuocngoai instance = (Quatrinhdinuocngoai) sessionFactory
					.getCurrentSession().get(
							"edu.hust.k54.persistence.Quatrinhdinuocngoai", id);
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

	public List findByExample(Quatrinhdinuocngoai instance) {
		log.debug("finding Quatrinhdinuocngoai instance by example");
		try {
			List results = sessionFactory
					.getCurrentSession()
					.createCriteria(
							"edu.hust.k54.persistence.Quatrinhdinuocngoai")
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
