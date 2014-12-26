package com.euphoria.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.euphoria.data.entity.Service;
import com.euphoria.data.repository.CommonSearchRepository;
import com.euphoria.data.repository.ServiceRepository;

@Controller
public class ServiceController extends BaseController<Service> {
    private static final String SERVICE = "service";
    private static final String SERVICES = "services";
    private static final String PATH = "/" + SERVICE;
    private static final String DELETE_VIEW = "/" + SERVICE + "/delete";

    public ServiceController() {
        super(SERVICES, SERVICE);
    }

    @Autowired
    private ServiceRepository serviceRepository;

    @RequestMapping(value = PATH, method = RequestMethod.GET)
    public String customerHome(ModelMap model) {
        return super.home(model);
    }

    @RequestMapping(value = PATH, method = RequestMethod.POST, params = "keyword")
    public String customerSearch(@RequestParam String keyword, ModelMap model) {
        return super.entitySearch(keyword, model);
    }

    @RequestMapping(value = PATH, method = RequestMethod.POST)
    public String addCustomer(@ModelAttribute Service service, ModelMap model) {
        return super.addEntity(service, model);
    }

    @RequestMapping(value = PATH + "/{id}", method = RequestMethod.GET)
    public String customerId(@PathVariable Long id, ModelMap model) {
        return super.getEntity(id, model);
    }

    @RequestMapping(value = DELETE_VIEW, method = RequestMethod.POST, params = "customerId")
    public String deleteCustomer(@RequestParam Long customerId, ModelMap model) {
        return super.deleteEntity(customerId, model);
    }

    @Override
    protected Service createBlankObject() {
        return new Service();
    }

    @Override
    protected CrudRepository<Service, Long> getCrudRepository() {
        return serviceRepository;
    }

    @Override
    protected CommonSearchRepository<Service> getSearchRepository() {
        return serviceRepository;
    }
}
