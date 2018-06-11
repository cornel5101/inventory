package com.cornelius.inventorymanagementsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.cornelius.inventorymanagementsystem.entities.Brands;


public interface BrandRepository extends JpaRepository<Brands, Integer>{

}
