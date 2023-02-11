package com.example.staffservice.staffservice.staff;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping
public class StaffController {
    @GetMapping("/")
    public String homePage(){
        return "home";
    }


    @GetMapping("/addstaff")
    public String addStaffPage(){
        return "addStaff";
    }

    @RequestMapping(value = "addstaff", method=RequestMethod.POST)
	public String addCustomer(@RequestParam("name") String name,
	@RequestParam("password") String password,
	@RequestParam("position") String position){

		try
		{
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/staffservice","root","");
			Statement stmt = con.createStatement();
			
			PreparedStatement pst = con.prepareStatement("insert into staffs(username,password,position) values(?,?,?);");
			pst.setString(1,name);
			pst.setString(2, password);
			pst.setString(3, position);
			int rowsAffected = pst.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}

		return "redirect:/addstaff?status=1";
		
	}
}
