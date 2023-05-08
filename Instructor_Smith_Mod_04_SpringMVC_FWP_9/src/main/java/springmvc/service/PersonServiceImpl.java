package springmvc.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springmvc.dao.PersonDAO;
import springmvc.model.Person;

@Service
@Transactional
public class PersonServiceImpl implements PersonService{
 
	private PersonDAO dao;

	public void setPersonDAO(PersonDAO dao) {
		this.dao = dao;
	} 
	@Override
	public List<Person> getPeopleDBList() { 
		return dao.listPersons();
	}
	@Override
	public void delete(Long id) {
		dao.removePerson(id);
	}
	@Override
	public void update(Person p) {
		dao.updatePerson(p);	}

	@Override
	public void deleteAll() {
		dao.clear();
	}
	@Override
	public void close() {
		dao.clear();
	}
	@Override
	public void batch(int num) {
		dao.addBatch(num);
	} 
	@Override
	public Person getPerson(Long id) { 
		return dao.getPersonById(id);
	}
	@Override
	public void create(Person p) {
		dao.addPerson(p);
	}
	@Override
	public int count() { 
		return dao.count();
	} 
}
