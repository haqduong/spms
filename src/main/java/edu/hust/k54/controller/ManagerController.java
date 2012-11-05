package edu.hust.k54.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

//import javax.transaction.Transaction;

//import net.sf.ehcache.hibernate.HibernateUtil;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;
import org.hibernate.cache.ehcache.internal.util.HibernateUtil;


//import net.sf.ehcache.hibernate.HibernateUtil;
//import antlr.collections.List;

import edu.hust.k54.persistence.*;


public class ManagerController {
	public static List<Soyeulylich> findAllStaff(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        List<Soyeulylich> staffList = new ArrayList<Soyeulylich>();
        try{
            tx = session.beginTransaction();
            List list = session.createQuery("from Soyeulylich").list();
            for(Iterator interator = list.iterator(); interator.hasNext();){
                Soyeulylich dt = (Soyeulylich)interator.next();
                staffList.add(dt);
            }
            tx.commit();

        }catch(HibernateException e){
            tx.rollback();
            e.printStackTrace();
        }
        return staffList;
    }
}
