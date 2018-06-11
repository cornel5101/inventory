package com.cornelius.inventorymanagementsystem.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cornelius.inventorymanagementsystem.repository.BrandRepository;
import com.cornelius.inventorymanagementsystem.repository.CategoryRepository;
import com.cornelius.inventorymanagementsystem.repository.ProductRepository;
import com.cornelius.inventorymanagementsystem.repository.UserRepository;

@Service
@Transactional
public class AppService {
	
	@Autowired
	BrandRepository brandrepo;
	
	@Autowired
	CategoryRepository caterepo;
	
	@Autowired
	ProductRepository prodrepo;

	
	@Autowired
	UserRepository usersrepo;


	public BrandRepository getBrandrepo() {
		return brandrepo;
	}


	public void setBrandrepo(BrandRepository brandrepo) {
		this.brandrepo = brandrepo;
	}


	public CategoryRepository getCaterepo() {
		return caterepo;
	}


	public void setCaterepo(CategoryRepository caterepo) {
		this.caterepo = caterepo;
	}


	public ProductRepository getProdrepo() {
		return prodrepo;
	}


	public void setProdrepo(ProductRepository prodrepo) {
		this.prodrepo = prodrepo;
	}


	public UserRepository getUsersrepo() {
		return usersrepo;
	}


	public void setUsersrepo(UserRepository usersrepo) {
		this.usersrepo = usersrepo;
	}


	
	
	

}
