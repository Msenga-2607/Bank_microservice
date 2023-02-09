package com.example.loanservice.loanservice.loan;

import java.sql.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/loans")
public class LoanController {
    String usernameforclass = "";
    Integer loan_id = 1;
    Integer status = 0;

    @GetMapping("/")
   public String homePage(){
    return "home";
   }

   @GetMapping("/hello")
  public String hello(Model model) {
    
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loanservice","root","");
        Statement stmt = con.createStatement();
        ResultSet rst = stmt.executeQuery("select * from loans where id = '"+loan_id+"';");
        if(rst.next()) {
            return "register";
            }
        else {
            return "whoops";
        }
        
    }
    catch(Exception e){
        System.out.println("Database Exception:"+e);
    }
    return "feeeeew";
  }
}
