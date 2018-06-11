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
@Table(name = "categories", catalog = "inventorysys", schema = "")
@NamedQueries({
    @NamedQuery(name = "Categories.findAll", query = "SELECT c FROM Categories c")
    , @NamedQuery(name = "Categories.findByCid", query = "SELECT c FROM Categories c WHERE c.cid = :cid")
    , @NamedQuery(name = "Categories.findByParentCat", query = "SELECT c FROM Categories c WHERE c.parentCat = :parentCat")
    , @NamedQuery(name = "Categories.findByCategoryName", query = "SELECT c FROM Categories c WHERE c.categoryName = :categoryName")
    , @NamedQuery(name = "Categories.findByStatus", query = "SELECT c FROM Categories c WHERE c.status = :status")})
public class Categories implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "cid")
    private Integer cid;
    @Column(name = "parent_cat")
    private Integer parentCat;
    @Column(name = "category_name")
    private String categoryName;
    @Column(name = "status")
    private String status;
    @OneToMany(mappedBy = "cid")
    private List<Products> productsList;

    public Categories() {
    }

    public Categories(Integer cid) {
        this.cid = cid;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getParentCat() {
        return parentCat;
    }

    public void setParentCat(Integer parentCat) {
        this.parentCat = parentCat;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
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
        hash += (cid != null ? cid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Categories)) {
            return false;
        }
        Categories other = (Categories) object;
        if ((this.cid == null && other.cid != null) || (this.cid != null && !this.cid.equals(other.cid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nandom.app.entities.Categories[ cid=" + cid + " ]";
    }
    
}
