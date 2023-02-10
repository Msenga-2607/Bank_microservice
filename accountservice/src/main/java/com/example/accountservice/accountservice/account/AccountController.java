package com.example.accountservice.accountservice.account;

import java.sql.*;
import java.util.Random;

import org.springframework.boot.autoconfigure.amqp.RabbitProperties.Cache.Connection;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
//@RequestMapping("/api/accounts")
public class AccountController {
    Integer balanace = 10000;

    @GetMapping("/")//working
   public String homePage(){
    return "home";
   }


   @GetMapping("/addAccount")
    public String addAccountPage(){
        return "addAccount";
    }

    //to be accessed from customer service
   @GetMapping("/api/create/customeraccount/{id}")
   @ResponseBody
    public String home(@PathVariable("id") String idString){
        try {
            long customer_id = Long.parseLong(idString);
            // Use the id value to retrieve customer information and return it in the response
        } catch (NumberFormatException e) {
            return "Invalid customer ID format. ID must be a long value.";
        }

        Random random = new Random();
        int number = (int) (random.nextDouble() * (int) (Math.pow(10, 13)));
        System.out.println(number);

        try
		{
            Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/accountservice","root","");
			Statement stmt = con.createStatement();
			
			PreparedStatement pst = con.prepareStatement("insert into accounts(customer_id,account_number,balance) values(?,?,?);");
			pst.setString(1, customer_id);
			pst.setString(2, sex);
			pst.setString(3, dob);
			int rowsAffected = pst.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}
        return "home heloooo";
    }
   
}
