package com.example.staffservice.staffservice.staff;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class StaffController {
    @GetMapping("/")
    public String homePage(){
        return "home";
    }
}
