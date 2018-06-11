/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cornelius.inventorymanagementsystem.entities;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Cornelius
 */
@Entity
@Table(name = "brands", catalog = "inventorysys", schema = "")
@NamedQueries({
    @NamedQuery(name = "Brands.findAll", query = "SELECT b FROM Brands b")
    , @NamedQuery(name = "Brands.findByBid", query = "SELECT b FROM Brands b WHERE b.bid = :bid")
    , @NamedQuery(name = "Brands.findByBrandName", query = "SELECT b FROM Brands b WHERE b.brandName = :brandName")
    , @NamedQuery(name = "Brands.findByStatus", query = "SELECT b FROM Brands b WHERE b.status = :status")})
public class Brands implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "bid")
    private Integer bid;
    @Column(name = "brand_name")
    private String brandName;
    @Column(name = "status")
    private String status;
    @OneToMany(mappedBy = "bid")
    private List<Products> productsList;

    public Brands() {
    }

    public Brands(Integer bid) {
        this.bid = bid;
    }

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<Products> getProductsList() {
        return productsList;
    }

    public void setProductsList(List<Products> productsList) {
        this.productsList = productsList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (bid != null ? bid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Brands)) {
            return false;
        }
        Brands other = (Brands) object;
        if ((this.bid == null && other.bid != null) || (this.bid != null && !this.bid.equals(other.bid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nandom.app.entities.Brands[ bid=" + bid + " ]";
    }
    
}
