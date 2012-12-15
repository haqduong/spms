package edu.hust.k54.persistence;


import java.util.List;
import javax.naming.InitialContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;

public class KhenthuongHome {

	private static final Log log = LogFactory.getLog(KhenthuongHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	public SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext()
					.lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException(
					"Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(Khenthuong transientInstance) {
		log.debug("persisting Khenthuong instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(Khenthuong instance) {
		log.debug("attaching dirty Khenthuong instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Khenthuong instance) {
		log.debug("attaching clean Khenthuong instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(Khenthuong persistentInstance) {
		log.debug("deleting Khenthuong instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Khenthuong merge(Khenthuong detachedInstance) {
		log.debug("merging Khenthuong instance");
		try {
			Khenthuong result = (Khenthuong) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Khenthuong findById(java.lang.Integer id) {
		log.debug("getting Khenthuong instance with id: " + id);
		try {
			Khenthuong instance = (Khenthuong) sessionFactory
					.getCurrentSession().get(
							"edu.hust.k54.persistence.Khenthuong", id);
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

	public List findByExample(Khenthuong instance) {
		log.debug("finding Khenthuong instance by example");
		try {
			List results = sessionFactory.getCurrentSession()
					.createCriteria("edu.hust.k54.persistence.Khenthuong")
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
