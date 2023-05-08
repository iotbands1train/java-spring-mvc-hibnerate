package springmvc.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springmvc.dao.AdminDAO;
import springmvc.model.Admin;

@Service
@Transactional
public class AdminServiceImpl implements AdminService{
 
	private AdminDAO dao;

	public void setAdminDAO(AdminDAO dao) {
		this.dao = dao;
	} 
	@Override
	public List<Admin> getPeopleDBList() { 
		return dao.listAdmins();
	}
	@Override
	public void delete(Long id) {
		dao.removeAdmin(id);
	}
	@Override
	public void update(Admin p) {
		dao.updateAdmin(p);	}

	@Override
	public void deleteAll() {
		dao.clear();
	}
	@Override
	public void close() {
		dao.clear();
	}
	@Override
	public void batch(Integer xval) {
		dao.addBatch(xval);
	} 
	@Override
	public Admin getAdmin(Long id) { 
		return dao.getAdminById(id);
	}
	@Override
	public void create(Admin p) {
		dao.addAdmin(p);
	}
	@Override
	public int count() { 
		return dao.count();
	}
	@Override
	public boolean findByUserPass(String user, String pass) {
		// TODO Auto-generated method stub
		return dao.findByUserPass(user,pass);
	}
	@Override
	public Admin getAdminByUser(String user) {
		// TODO Auto-generated method stub
		return dao.getAdminByUser(user);
	} 
}
