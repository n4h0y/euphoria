package com.euphoria.web.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.data.repository.CrudRepository;
import org.springframework.ui.ModelMap;

import com.euphoria.data.repository.CommonSearchRepository;

public abstract class BaseController<T> {
    private static final Logger LOG = Logger.getLogger(CustomerController.class);

    private static final String KEYWORD_ATTRIBUTE = "keyword";
    private static final String PAGE_MESSAGE = "message";

    private final String collectionAttributeName;
    private final String singleAttributeName;
    private final String entityType;
    private final String defaultView;
    private final String singleView;

    public BaseController(String collectionAttributeName, String singleAttributeName) {
        super();
        this.collectionAttributeName = collectionAttributeName;
        this.singleAttributeName = singleAttributeName;
        this.entityType = singleAttributeName;
        this.defaultView = collectionAttributeName;
        this.singleView = singleAttributeName;
    }

    public String home(ModelMap model) {
        model.addAttribute(singleAttributeName, createBlankObject());
        return defaultView;
    }

    public String entitySearch(String keyword, ModelMap model) {
        List<T> result = null;
        if (keyword != null) {
            result = getSearchRepository().findDistinctByKeyword(keyword);
        }
        model.addAttribute(collectionAttributeName, result);
        model.addAttribute(singleAttributeName, createBlankObject());
        model.addAttribute(KEYWORD_ATTRIBUTE, keyword);
        return defaultView;
    }

    public String addEntity(T entity, ModelMap model) {
        if (entity != null) {
            T result = getCrudRepository().save(entity);
            model.addAttribute(singleAttributeName, result);
            return singleView;
        }
        return defaultView;
    }

    public String getEntity(Long id, ModelMap model) {
        T result = getCrudRepository().findOne(id);

        String view;
        if (result != null) {
            model.addAttribute(singleAttributeName, result);
            view = singleView;
        } else {
            view = defaultView;
        }
        return view;
    }

    public String deleteEntity(Long entityId, ModelMap model) {
        T result = getCrudRepository().findOne(entityId);

        String message;
        if (result != null) {
            getCrudRepository().delete(entityId);
            message = entityType + " " + entityId + " has been deleted.";
        } else {
            message = "Can not find " + entityType + " to be deleted, Id[" + entityId + "]";
        }

        model.addAttribute(singleAttributeName, createBlankObject());
        model.addAttribute(PAGE_MESSAGE, message);

        return defaultView;
    }

    protected abstract T createBlankObject();

    protected abstract CrudRepository<T, Long> getCrudRepository();

    protected abstract CommonSearchRepository<T> getSearchRepository();
}
