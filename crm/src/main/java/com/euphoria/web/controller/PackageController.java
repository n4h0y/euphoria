package com.euphoria.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.euphoria.data.entity.Customer;
import com.euphoria.data.repository.CustomerRepository;

@Controller
public class PackageController {

    private static final String VIEW = "customer";
    private static final String PATH = "/customer";

    @Autowired
    private CustomerRepository customerRepository;

}
