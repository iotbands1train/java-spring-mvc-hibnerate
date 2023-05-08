package springmvc.dao;

import java.util.ArrayList;
import java.util.List; 
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import springmvc.model.Person;
 
@Repository
public class PersonDAOImpl implements PersonDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(PersonDAOImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	@Override
	public void addPerson(Person p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Person saved successfully, Person Details="+p);
	}
	@Override
	public void updatePerson(Person p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Person updated successfully, Person Details="+p);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Person> listPersons() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Person> personsList = session.createQuery("from Person").list();
		for(Person p : personsList){
			logger.info("Person List::"+p);
		}
		return personsList;
	}
	@SuppressWarnings("removal")
	@Override
	public Person getPersonById(Long id) {
		Session session = this.sessionFactory.getCurrentSession();	
		Person p=new Person();
		Person p1 = new Person(1L, null, null, null, null, null, null, null);
		try {  p = (Person) session.get(Person.class, new Long(id));			
		}catch (ObjectNotFoundException e) {
			return p1;
		}
		logger.info("Person loaded successfully, Person details="+p);
		return p;
	} 
	@SuppressWarnings("removal")
	@Override
	public void removePerson(Long id) {
		Session session = this.sessionFactory.getCurrentSession();
		Person p = (Person) session.load(Person.class, new Long(id));
		if(null != p) session.delete(p);
		logger.info("Person deleted successfully, person details="+p);
	}
	@Override
	public void addBatch(int numberOfPeople) {
		List<Person> list=RandomPerson.getRandPerson(numberOfPeople); 
		int len=list.size();
		Session session = sessionFactory.openSession(); 
		for ( int i=0; i<len; i++ ) { 
		    if ( i % 20 == 0 ) {  
			    session.save(list.get(i));
		        session.flush();
		        session.clear();
		    }else {
			    session.save(list.get(i));
		    }
		} 
		session.close();
	}
	@Override
	public void clear() {
		Session session = sessionFactory.openSession(); 
		List<Person> list=listPersons();
		for ( int i=0; i<list.size()-1; i++ ) {
			Person p = list.get(i);
		    session.delete( p );
		    if ( i % 20 == 0 ) {  
		        session.flush();
		        session.clear();
		    }
		} 
		session.close();		
	}
	@Override
	public Person randomPerson() { 
		return randomPerson();
	}
	@Override
	public int count() {
		Session session = this.sessionFactory.getCurrentSession();
		int count = session.createQuery("from Person").list().size();		 
		return count;
	} 

}
