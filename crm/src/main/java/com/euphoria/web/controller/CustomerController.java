package com.euphoria.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.euphoria.data.entity.Customer;
import com.euphoria.data.repository.CustomerRepository;
import com.euphoria.data.repository.CustomerSearchRepository;

@Controller
public class CustomerController {
	private static final Logger log = Logger.getLogger(CustomerController.class);
	
	private static final String CUSTOMER = "customer";
	private static final String CUSTOMER_VIEW = CUSTOMER;
	private static final String CUSTOMERS = "customers";
	private static final String DEFAULT_VIEW = CUSTOMERS;
	private static final String PATH = "/" + CUSTOMER;

	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private CustomerSearchRepository customerSearchRepository;
	
	@RequestMapping(value = PATH, method = RequestMethod.GET)
	public String customerHome(ModelMap model) {
		model.addAttribute(CUSTOMER, new Customer());
		model.addAttribute("keyword", new String());
		return DEFAULT_VIEW;
	}

	@RequestMapping(value = PATH, method = RequestMethod.POST,params="keyword")
	public String customerSearch(@RequestParam String keyword, ModelMap model) {
		if (keyword != null) {
			List<Customer> result = customerRepository.findDistinctCustomerByKeyword(keyword);
			model.addAttribute(CUSTOMERS, result);
		}
		model.addAttribute(CUSTOMER, new Customer());
		model.addAttribute("keyword", new String());
		return DEFAULT_VIEW;
	}

	@RequestMapping(value = PATH, method = RequestMethod.POST)
	public String addCustomer(@ModelAttribute Customer customer,
			ModelMap model) {
		if (customer != null) {
			Customer result = customerRepository.save(customer);
			model.addAttribute(CUSTOMER, result);
			return CUSTOMER_VIEW;
		}
		return DEFAULT_VIEW;
	}
	
	@RequestMapping(value = PATH + "/{id}", method = RequestMethod.GET)
	public String customerId(@PathVariable Long id, ModelMap model) {
		Customer customer = customerRepository.findOne(id);

		String view;
		if (customer != null) {
			model.addAttribute(CUSTOMER, customer);
			view = CUSTOMER_VIEW;
		} else {
			view = DEFAULT_VIEW;
		}
		return view;
	}
}
