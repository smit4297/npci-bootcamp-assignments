package com.example.demo.service;


import java.util.List;

import com.example.demo.entity.Product;


public interface ProductService {
	
	public List<Product> findAll();
	public void save(Product e);
	public Product findById(Integer id);
	public void deleteById(Integer id);
	public List<Product> searchBy(String name);
}
