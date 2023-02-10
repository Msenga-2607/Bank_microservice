package com.example.loanservice.loanservice.loan;

import java.sql.*;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
//@RequestMapping("/api/loans")
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

  //to be accessed from customer service
  @GetMapping("/api/apply/loan/{id}")
  @ResponseBody
   public String home(@PathVariable("id") String idString){
       try {
           long customerAccount_id = Long.parseLong(idString);
           // Use the id value to retrieve customer information and return it in the response
       } catch (NumberFormatException e) {
           return "Invalid customer Account ID format. ID must be a long value.";
       }

       try
       {
           Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loanservice","root","");
           Statement stmt = con.createStatement();
           
           PreparedStatement pst = con.prepareStatement("insert into loans(customer_id,amount,purpose,credit_history,status) values(?,?,?,?,?);");
           pst.setString(1, idString);
           pst.setInt(2, number);
           pst.setInt(3, balance);
           pst.setInt(4, balance);
           pst.setInt(5, balance);
           int rowsAffected = pst.executeUpdate();
       }
       catch(Exception e)
       {
           System.out.println("Exception:"+e);
       }
       return "home";
   }
}
