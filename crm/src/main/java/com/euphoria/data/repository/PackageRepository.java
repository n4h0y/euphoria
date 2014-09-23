package com.euphoria.data.repository;

import org.springframework.data.repository.CrudRepository;

import com.euphoria.data.entity.Package;

public interface PackageRepository extends CrudRepository<Package, Long> {

}
