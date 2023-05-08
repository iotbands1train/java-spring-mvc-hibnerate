package springmvc.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import springmvc.model.Admin;
import springmvc.model.Person;

public class RandomPerson {
	static List<Person> getRandPerson(int next20) {
		List<Person> people = new ArrayList<>();
		for (int i = 0; i < next20; i++) {
			Person person = randomPerson();
			people.add(person);
		}
		return people;
	}
	private static List<Admin> getRandAdmin(int next20) {
		List<Admin> people = new ArrayList<>();
		for (int i = 0; i < next20; i++) {
			Admin person = randomAdmin();
			people.add(person);
		}
		return people;
	}
	public static Admin randomAdmin() {
		Long id = new Random().nextLong(333388821, 339988821);
		String user = randomUser();
		String pass = randomPass(); 
		Admin admin = new Admin(id, user, pass);
		return admin;
	}
	private static String randomPass() {
		String[] p = { "ty9read", "huh6!lokl", "yel3hom", "el8fee", "loo3vgu", "poo7que", "hub9mo" };
		String f=p[new Random().nextInt(0, p.length)];
		char nu =(char) new Random().nextInt(96, 121);
		
		return f+""+nu;
	}
	private static String randomUser() {
		String[] p = { "Code", "Talent", "Warrior", "Domino", "Tiger", "Rambo", "Zeus" };
		String f=p[new Random().nextInt(0, p.length)];
		int nu = new Random().nextInt(11, 99);
		
		return f+""+nu;
	}
	public static Person randomPerson() {
		Long id = new Random().nextLong(333388821, 339988821);
		String fname = randomFirst();
		String lname = randomLast();
		String street = randomStret();
		String city = randomCity();
		String state = "Tx";
		String zip = "77" + new Random().nextInt(199, 998) + "";
		String phone = new Random().nextInt(199, 998) + "-" + new Random().nextInt(199, 998) + "-"
				+ new Random().nextInt(1991, 9989);
		Person person = new Person(id, fname, lname, street, city, state, zip, phone);
		return person;
	}

	private static String randomFirst() {
		String[] n = { "Sue", "Mike", "Nick", "Julie", "Janice", "Josh", "Fred" };
		return n[new Random().nextInt(0, n.length)];
	}

	private static String randomLast() {
		String[] n = { "William", "Stone", "Yale", "Brown", "Gomez", "Reyes", "Zho" };
		return n[new Random().nextInt(0, n.length)];
	}

	private static String randomStret() {
		String[] n = { "Main St.", "Wall Blvd.", "West Ln.", "Dulles Rd.", "Griggs Rd.", "Lone St.", "2nd St." };
		return new Random().nextInt(1254, 9562) + " " + n[new Random().nextInt(0, n.length)];
	}

	private static String randomCity() {
		String[] n = { "Houston", "SugaLand", "Bellaire", "West U", "SoHo", "Kemah", "Conroe" };
		return n[new Random().nextInt(0, n.length)];
	} 
}