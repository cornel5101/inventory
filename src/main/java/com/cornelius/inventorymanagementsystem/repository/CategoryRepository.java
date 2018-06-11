package com.cornelius.inventorymanagementsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cornelius.inventorymanagementsystem.entities.Categories;



public interface CategoryRepository extends JpaRepository<Categories, Integer> {

}
