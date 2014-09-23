package com.euphoria.data.repository;

import org.springframework.data.repository.CrudRepository;

import com.euphoria.data.entity.Customer;

public interface CustomerRepository extends CrudRepository<Customer, Long> {

}
