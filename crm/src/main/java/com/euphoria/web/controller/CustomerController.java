package com.euphoria.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.euphoria.data.entity.Customer;
import com.euphoria.data.repository.CustomerRepository;

@Controller
public class CustomerController {

    private static final String CUSTOMER = "customer";
    private static final String CUSTOMER_VIEW = CUSTOMER;
    private static final String CUSTOMERS = "customers";
    private static final String DEFAULT_VIEW = CUSTOMERS;
    private static final String PATH = "/" + CUSTOMER;

    @Autowired
    private CustomerRepository customerRepository;

    @RequestMapping(value = PATH, method = RequestMethod.GET)
    public String customerHome(ModelMap model) {
        model.addAttribute(CUSTOMER, new Customer());
        return DEFAULT_VIEW;
    }

    @RequestMapping(value = PATH, method = RequestMethod.POST)
    public String customerSearch(@ModelAttribute Customer customer, ModelMap model) {
        if (customer != null) {
            Customer result = customerRepository.save(customer);
            model.addAttribute(CUSTOMER, result);
            return "customer";
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
