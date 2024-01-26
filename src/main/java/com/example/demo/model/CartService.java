package com.example.demo.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.mapper.CartMapper;

@Service
public class CartService {
	
	@Autowired
	CartMapper cartMapper;
	
	
}
