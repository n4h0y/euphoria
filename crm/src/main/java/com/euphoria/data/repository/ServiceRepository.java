package com.euphoria.data.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.euphoria.data.entity.Service;

public interface ServiceRepository extends CrudRepository<Service, Long>, CommonSearchRepository<Service>,
                                  JpaRepository<Service, Long> {
    @Query(value = "select distinct * from Service s where s.name like %:keyword% OR s.description like %:keyword%",
           nativeQuery = true)
    @Override
    public List<Service> findDistinctByKeyword(@Param("keyword") String keyword);

}
