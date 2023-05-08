package springmvc.dao;

import java.util.List; 

import springmvc.model.Admin; 
 
public interface AdminDAO {

	public void addAdmin(Admin p);
	public void updateAdmin(Admin p);
	public List<Admin> listAdmins(); 
	public Admin getAdminById(Long id);
	public void removeAdmin(Long id);
	public void addBatch(int numberOfPeople);
	public void clear();
	public Admin randomAdmin();
	public int count();
	public boolean findByUserPass(String user, String pass);
	public Admin getAdminByUser(String user); 
}
