package com.euphoria.data.repository;

import org.springframework.data.repository.CrudRepository;

import com.euphoria.data.entity.Product;

public interface ProductRepository extends CrudRepository<Product, Long> {

}
