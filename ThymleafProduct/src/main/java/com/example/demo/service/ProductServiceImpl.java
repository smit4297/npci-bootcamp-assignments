package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Product;
import com.example.demo.repository.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductRepository repository;

	public List<Product> findAll() {

		return repository.findAll(); 
	}

	public void save(Product p) {
		repository.save(p);
	}

	public Product findById(Integer id) {

		Optional<Product> p = repository.findById(id);
		Product product = null;

		if (p.isPresent())
			product = p.get();

		return product;
	}

	public void deleteById(Integer id) {
		repository.deleteById(id);

	}

	@Override
	public List<Product> searchBy(String name) {
		List<Product> results = null;
		if(name != null && (name.trim().length()>0))
			results = repository.findByname(name);
		else
			results = findAll();
		return results;
	}

}
