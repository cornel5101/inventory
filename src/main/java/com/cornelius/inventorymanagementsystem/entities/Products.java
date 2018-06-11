/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cornelius.inventorymanagementsystem.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Cornelius
 */
@Entity
@Table(name = "products", catalog = "inventorysys", schema = "")
@NamedQueries({
    @NamedQuery(name = "Products.findAll", query = "SELECT p FROM Products p")
    , @NamedQuery(name = "Products.findByPid", query = "SELECT p FROM Products p WHERE p.pid = :pid")
    , @NamedQuery(name = "Products.findByProductName", query = "SELECT p FROM Products p WHERE p.productName = :productName")
    , @NamedQuery(name = "Products.findByProductPrice", query = "SELECT p FROM Products p WHERE p.productPrice = :productPrice")
    , @NamedQuery(name = "Products.findByProductStock", query = "SELECT p FROM Products p WHERE p.productStock = :productStock")
    , @NamedQuery(name = "Products.findByAddedDate", query = "SELECT p FROM Products p WHERE p.addedDate = :addedDate")
    , @NamedQuery(name = "Products.findByProdStatus", query = "SELECT p FROM Products p WHERE p.prodStatus = :prodStatus")})
public class Products implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "pid")
    private Integer pid;
    @Basic(optional = false)
    @Column(name = "product_name")
    private String productName;
    @Basic(optional = false)
    @Column(name = "product_price")
    private double productPrice;
    @Basic(optional = false)
    @Column(name = "product_stock")
    private int productStock;
    @Basic(optional = false)
    @Column(name = "added_date")
    @Temporal(TemporalType.DATE)
    private Date addedDate;
    @Basic(optional = false)
    @Column(name = "prod_status")
    private String prodStatus;
    @JoinColumn(name = "bid", referencedColumnName = "bid")
    @ManyToOne
    private Brands bid;
    @JoinColumn(name = "cid", referencedColumnName = "cid")
    @ManyToOne
    private Categories cid;

    public Products() {
    }

    public Products(Integer pid) {
        this.pid = pid;
    }

    public Products(Integer pid, String productName, double productPrice, int productStock, Date addedDate, String prodStatus) {
        this.pid = pid;
        this.productName = productName;
        this.productPrice = productPrice;
        this.productStock = productStock;
        this.addedDate = addedDate;
        this.prodStatus = prodStatus;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public int getProductStock() {
        return productStock;
    }

    public void setProductStock(int productStock) {
        this.productStock = productStock;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }

    public String getProdStatus() {
        return prodStatus;
    }

    public void setProdStatus(String prodStatus) {
        this.prodStatus = prodStatus;
    }

    public Brands getBid() {
        return bid;
    }

    public void setBid(Brands bid) {
        this.bid = bid;
    }

    public Categories getCid() {
        return cid;
    }

    public void setCid(Categories cid) {
        this.cid = cid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (pid != null ? pid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Products)) {
            return false;
        }
        Products other = (Products) object;
        if ((this.pid == null && other.pid != null) || (this.pid != null && !this.pid.equals(other.pid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nandom.app.entities.Products[ pid=" + pid + " ]";
    }
    
}
