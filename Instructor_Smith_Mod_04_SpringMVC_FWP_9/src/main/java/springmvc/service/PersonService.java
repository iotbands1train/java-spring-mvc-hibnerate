package springmvc.service;

import java.util.List;
import java.util.Optional;

import springmvc.model.Person;

public interface PersonService {
	public void create(Person p);
	public Person getPerson(Long id); 
	public List<Person> getPeopleDBList();
	public void delete(Long id);
	public void update(Person p);
	public void deleteAll();
	public void close();
	public void batch(int num);
	public int count(); 
}
