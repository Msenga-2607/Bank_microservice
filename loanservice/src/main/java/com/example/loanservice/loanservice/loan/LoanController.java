package com.example.loanservice.loanservice.loan;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class LoanController {
    @GetMapping("/")
   public String homePage(){
    return "home";
   }
}
