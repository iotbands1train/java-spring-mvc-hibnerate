package springmvc.dao;

import java.util.List;
import java.util.Optional;

import springmvc.model.Person;
 
public interface PersonDAO {

	public void addPerson(Person p);
	public void updatePerson(Person p);
	public List<Person> listPersons(); 
	public Person getPersonById(Long id);
	public void removePerson(Long id);
	public void addBatch(int numberOfPeople);
	public void clear();
	public Person randomPerson();
	public int count(); 
}
