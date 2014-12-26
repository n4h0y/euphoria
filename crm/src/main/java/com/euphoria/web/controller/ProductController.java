package com.euphoria.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.euphoria.data.repository.CustomerRepository;

@Controller
public class ProductController {

    private static final String VIEW = "product";
    private static final String PATH = "/customer";

    @Autowired
    private CustomerRepository productRepository;    
}
