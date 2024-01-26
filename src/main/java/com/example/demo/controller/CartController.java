package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.example.demo.model.CartService;

@Controller
public class CartController {

	@Autowired
	CartService cartService;
	
	@GetMapping("cart.do")
	private String cartForm(Model model, @SessionAttribute(name = "UserNoSession", required = false) Integer userNo) {
		System.out.println("userNo : "+ userNo);
		
		if (userNo == null){
			// 로으인이 되어있지 않으면 처리 
		}
		
		
		model.addAttribute("userNo" + userNo);
		
		return "/main/cart";
	}
	
	
	
	
}
