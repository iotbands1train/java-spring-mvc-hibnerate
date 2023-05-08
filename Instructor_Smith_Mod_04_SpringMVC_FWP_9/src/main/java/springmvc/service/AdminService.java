package springmvc.service;

import java.util.List;
import java.util.Optional;

import springmvc.model.Admin;

public interface AdminService {
	public void create(Admin p);
	public Admin getAdmin(Long id); 
	public List<Admin> getPeopleDBList();
	public void delete(Long id);
	public void update(Admin p);
	public void deleteAll();
	public void close();
	public void batch(Integer xval);
	public int count();
	public boolean findByUserPass(String user, String pass);
	public Admin getAdminByUser(String user); 
}
