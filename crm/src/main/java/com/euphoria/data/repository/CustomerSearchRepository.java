package com.euphoria.data.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.euphoria.data.entity.Customer;

public interface CustomerSearchRepository extends JpaRepository<Customer, Long> {

	@Query(value="select * from Customer c where c.firstName like %:keyword%", nativeQuery=true)
	List<Customer> findDistinctCustomerByKeyword(@Param("keyword") String keyword);

}
