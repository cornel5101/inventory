package com.cornelius.inventorymanagementsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cornelius.inventorymanagementsystem.entities.Products;

public interface ProductRepository extends JpaRepository<Products, Integer> {

}
