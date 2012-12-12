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
 * Home object for domain model class Taikhoandangnhap.
 * @see edu.hust.k54.persistence.Taikhoandangnhap
 * @author Hibernate Tools
 */
public class TaikhoandangnhapHome {

	private static final Log log = LogFactory
			.getLog(TaikhoandangnhapHome.class);

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

	public void persist(Taikhoandangnhap transientInstance) {
		log.debug("persisting Taikhoandangnhap instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(Taikhoandangnhap instance) {
		log.debug("attaching dirty Taikhoandangnhap instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Taikhoandangnhap instance) {
		log.debug("attaching clean Taikhoandangnhap instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(Taikhoandangnhap persistentInstance) {
		log.debug("deleting Taikhoandangnhap instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Taikhoandangnhap merge(Taikhoandangnhap detachedInstance) {
		log.debug("merging Taikhoandangnhap instance");
		try {
			Taikhoandangnhap result = (Taikhoandangnhap) sessionFactory
					.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Taikhoandangnhap findById(java.lang.Integer id) {
		log.debug("getting Taikhoandangnhap instance with id: " + id);
		try {
			Taikhoandangnhap instance = (Taikhoandangnhap) sessionFactory
					.getCurrentSession().get(
							"edu.hust.k54.persistence.Taikhoandangnhap", id);
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

	public List findByExample(Taikhoandangnhap instance) {
		log.debug("finding Taikhoandangnhap instance by example");
		try {
			List results = sessionFactory
					.openSession()
					.createCriteria("edu.hust.k54.persistence.Taikhoandangnhap")
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
