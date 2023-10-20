package customer.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import customer.dao.CustomerDao;
import customer.model.Customer;

@Controller
public class MainController {

	@Autowired
	private CustomerDao customerDao;

	@RequestMapping("/")
	public String home(Model m) {
		String id="cust12";
		int pass=1234;
		if(id==id && pass==pass) {
			
			List<Customer> customers = customerDao.getCustomers();
			m.addAttribute("customers", customers);
			
			return "index";
		}
		
		return "login";
	}

	// Show Add Product Form
	@RequestMapping("/add-customer")
	public String addCustomer(Model m) {
		m.addAttribute("title", "Customer Product");

		return "add_customer_form";
	}

	// Handle add Product Form
	@RequestMapping(value = "/handle-customer", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Customer customer, HttpServletRequest request) {
		System.out.println(customer);
		customerDao.createCustomer(customer);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");

		return redirectView;
	}

	// Delete Handler

	@RequestMapping("/delete/{customerId}")
	public RedirectView deleteProduct(@PathVariable("customerId") int customerId, HttpServletRequest request) {
		this.customerDao.deleteCustomer(customerId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");

		return redirectView;
	}

	@RequestMapping("/update/{customerId}")
	public String updateForm(@PathVariable("customerId") int cId, Model model) {
		Customer customer = this.customerDao.getCustomer(cId);
		model.addAttribute("customer", customer);
		return "update_form";
	}
}
