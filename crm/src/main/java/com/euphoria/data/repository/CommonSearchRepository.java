package com.euphoria.data.repository;

import java.util.List;

import org.springframework.data.repository.query.Param;

public interface CommonSearchRepository<T> {
    public List<T> findDistinctByKeyword(@Param("keyword") String keyword);
}
