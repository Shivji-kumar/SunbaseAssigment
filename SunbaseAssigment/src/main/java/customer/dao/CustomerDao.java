package customer.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import customer.model.Customer;

@Component
public class CustomerDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public void createCustomer(Customer customer) {

		
		this.hibernateTemplate.saveOrUpdate(customer);
	}

	// Get all Customers
	public List<Customer> getCustomers() {
		List<Customer> customers = this.hibernateTemplate.loadAll(Customer.class);
		return customers;
	}
	
	//Delete the single Customer
	@Transactional
	public void deleteCustomer(int pid) {
		Customer p= this.hibernateTemplate.load(Customer.class, pid);
		this.hibernateTemplate.delete(p);
	}
	//Get the single Customer
	
	public Customer getCustomer(int pid) {
	 return	this.hibernateTemplate.get(Customer.class, pid);
				
	}
}
