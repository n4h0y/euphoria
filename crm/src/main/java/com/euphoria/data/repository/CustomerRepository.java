package com.euphoria.data.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.euphoria.data.entity.Customer;

public interface CustomerRepository extends CrudRepository<Customer, Long>, JpaRepository<Customer, Long>,
                                   CommonSearchRepository<Customer> {

    @Query(value = "select distinct * from Customer c where c.firstName like %:keyword% OR c.lastName like %:keyword% OR c.email like %:keyword%",
           nativeQuery = true)
    @Override
    public List<Customer> findDistinctByKeyword(@Param("keyword") String keyword);

}
