package springmvc.dao;

import java.util.Iterator;
import java.util.List; 
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import springmvc.model.Admin;
 
@Repository
public class AdminDAOImpl implements AdminDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminDAOImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	@Override
	public void addAdmin(Admin p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Admin saved successfully, Admin Details="+p);
	}
	@Override
	public void updateAdmin(Admin p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Admin updated successfully, Admin Details="+p);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Admin> listAdmins() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Admin> adminsList = session.createQuery("from Admin").list();
		for(Admin p : adminsList){
			logger.info("Admin List::"+p);
		}
		return adminsList;
	}
	@SuppressWarnings("removal")
	@Override
	public Admin getAdminById(Long id) {
		Session session = this.sessionFactory.getCurrentSession();	
		Admin p=new Admin();
		Admin p1 = new Admin(1L, null, null);
		try {  p = (Admin) session.get(Admin.class, new Long(id));			
		}catch (ObjectNotFoundException e) {
			return p1;
		}
		logger.info("Admin loaded successfully, Admin details="+p);
		return p;
	} 
	@SuppressWarnings("removal")
	@Override
	public void removeAdmin(Long id) {
		Session session = this.sessionFactory.getCurrentSession();
		Admin p = (Admin) session.load(Admin.class, new Long(id));
		if(null != p) session.delete(p);
		logger.info("Admin deleted successfully, admin details="+p);
	}
	@Override
	public void addBatch(int numberOfPeople) {
		Session session = sessionFactory.openSession(); 
		for ( int i=0; i<numberOfPeople; i++ ) {
			Admin p = randomAdmin();
		    session.save(p);
		    if ( i % 20 == 0 ) {  
		        session.flush();
		        session.clear();
		    }
		} 
		session.close();
	}
	@Override
	public void clear() {
		Session session = sessionFactory.openSession(); 
		List<Admin> list=listAdmins();
		for ( int i=0; i<list.size()-1; i++ ) {
			Admin p = list.get(i);
		    session.delete( p );
		    if ( i % 20 == 0 ) {  
		        session.flush();
		        session.clear();
		    }
		} 
		session.close();		
	}
	@Override
	public Admin randomAdmin() { 
		return randomAdmin();
	}
	@Override
	public int count() {
		Session session = this.sessionFactory.getCurrentSession();
		int count = session.createQuery("from Admin").list().size();		 
		return count;
	}
	@Override
	public boolean findByUserPass(String user, String pass) {
		List<Admin> list= listAdmins();Admin p =null;
		for (Iterator iterator = list.iterator(); iterator.hasNext();) {
			Admin admin = (Admin) iterator.next();
			String u = admin.getUser();
			if(u.equalsIgnoreCase(user))p=admin;
		} 
		 
		return p.getPass().equalsIgnoreCase(pass);
	}
	@Override
	public Admin getAdminByUser(String user) {
		List<Admin> list= listAdmins();Admin p =null;
		for (Iterator iterator = list.iterator(); iterator.hasNext();) {
			Admin admin = (Admin) iterator.next();
			String u = admin.getUser();
			if(u.equalsIgnoreCase(user))p=admin;
		} 
		 
		return p;
	} 

}
