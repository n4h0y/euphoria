package com.euphoria.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.euphoria.data.entity.Customer;
import com.euphoria.data.repository.CommonSearchRepository;
import com.euphoria.data.repository.CustomerRepository;

@Controller
public class CustomerController extends BaseController<Customer> {

    private static final String CUSTOMER = "customer";
    private static final String CUSTOMERS = "customers";
    private static final String PATH = "/" + CUSTOMER;
    private static final String DELETE_VIEW = "/" + CUSTOMER + "/delete";

    public CustomerController() {
        super(CUSTOMERS, CUSTOMER);
    }

    @Autowired
    private CustomerRepository customerRepository;

    @RequestMapping(value = PATH, method = RequestMethod.GET)
    public String customerHome(ModelMap model) {
        return super.home(model);
    }

    @RequestMapping(value = PATH, method = RequestMethod.POST, params = "keyword")
    public String customerSearch(@RequestParam String keyword, ModelMap model) {
        return super.entitySearch(keyword, model);
    }

    @RequestMapping(value = PATH, method = RequestMethod.POST)
    public String addCustomer(@ModelAttribute Customer customer, ModelMap model) {
        return super.addEntity(customer, model);
    }

    @RequestMapping(value = PATH + "/{id}", method = RequestMethod.GET)
    public String customerId(@PathVariable Long id, ModelMap model) {
        return super.getEntity(id, model);
    }

    @RequestMapping(value = DELETE_VIEW, method = RequestMethod.POST, params = "customerId")
    public String deleteCustomer(@RequestParam Long customerId, ModelMap model) {
        return super.deleteEntity(customerId, model);
    }

    @Override
    protected Customer createBlankObject() {
        return new Customer();
    }

    @Override
    protected CrudRepository<Customer, Long> getCrudRepository() {
        return customerRepository;
    }

    @Override
    protected CommonSearchRepository<Customer> getSearchRepository() {
        return customerRepository;
    }

}
