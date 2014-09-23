package com.euphoria.data.entity;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@Entity
public class Package {

    private String code;

    private String description;

    private String name;

    @Id
    @GeneratedValue
    private Long packageId;

    @ManyToMany
    @JoinTable(name = "PackageProduct", joinColumns = @JoinColumn(name = "packageId"), inverseJoinColumns = @JoinColumn(name = "productId"))
    private Collection<Product> products;

    @ManyToMany
    @JoinTable(name = "PackageService", joinColumns = @JoinColumn(name = "packageId"), inverseJoinColumns = @JoinColumn(name = "serviceId"))
    private Collection<Service> services;

    //@ManyToMany
    //@JoinTable(name = "PackageUpgrade", joinColumns = {
    //        @JoinColumn(name = "mainPackageId", referencedColumnName = "packageId"),
    //        @JoinColumn(name = "upgradePackageId", referencedColumnName = "packageId") })
    //private Collection<Package> upgrades;

    public String getCode() {
        return this.code;
    }

    public String getDescription() {
        return this.description;
    }

    public String getName() {
        return this.name;
    }

    public Long getPackageId() {
        return this.packageId;
    }

    public Collection<Product> getProducts() {
        return this.products;
    }

    public Collection<Service> getServices() {
        return this.services;
    }

    public void setCode(final String code) {
        this.code = code;
    }

    public void setDescription(final String description) {
        this.description = description;
    }

    public void setName(final String name) {
        this.name = name;
    }

    public void setPackageId(final Long packageId) {
        this.packageId = packageId;
    }

    public void setProducts(final Collection<Product> products) {
        this.products = products;
    }

    public void setServices(final Collection<Service> services) {
        this.services = services;
    }

}
