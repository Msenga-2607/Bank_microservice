package com.example.customerservice.customerservice.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CustomerController {

    @GetMapping("/register")
	public String registerCustomer(){
		return "register";
	}
    
}
