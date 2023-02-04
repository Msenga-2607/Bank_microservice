package com.example.accountservice.accountservice.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/api/accounts")
public class AccountController {
    @GetMapping("/")//working
   public String homePage(){
    return "home";
   }

    //to be accessed from customer service
   @GetMapping("/customer")
    public String home(){
        return "home heloooo";
    }
   
}
