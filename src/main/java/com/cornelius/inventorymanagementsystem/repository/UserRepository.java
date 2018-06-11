package com.cornelius.inventorymanagementsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cornelius.inventorymanagementsystem.entities.User;



public interface UserRepository extends JpaRepository<User, Integer> {

}
