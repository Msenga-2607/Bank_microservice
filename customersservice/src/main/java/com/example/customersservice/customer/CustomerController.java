package com.example.customersservice.customer;

import java.sql.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class CustomerController {
	String usernameforclass = "";
    @GetMapping("/")
	public String loginUserPage(Model model){
		return "index";
	}

    @GetMapping("/home")
	public String index(Model model) {
		if(usernameforclass.equalsIgnoreCase(""))
			return "userLogin";
		else {
			model.addAttribute("username", usernameforclass);
			return "home";
		}
			
	}

    @RequestMapping(value = "userloginvalidate", method = RequestMethod.POST)
    public String userlogin(@RequestParam("username") String username,
    @RequestParam("password") String pass,Model model) {
        try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/springproject","root","");
			Statement stmt = con.createStatement();
			ResultSet rst = stmt.executeQuery("select * from users where username = '"+username+"' and password = '"+pass+"' ;");
			if(rst.next()) {
				usernameforclass = rst.getString(2);
				return "redirect:/home";
				}
			else {
				model.addAttribute("message", "Invalid Username or Password");
				return "index";
			}
			
		}
		catch(Exception e){
			System.out.println("Exception:"+e);
		}
        return "index";
    }

    @GetMapping("/register")
	public String registerCustomer(){
		return "register";
	}

	@RequestMapping(value = "addcustomer", method=RequestMethod.POST)
	public String addCustomer(@RequestParam("name") String name,
	@RequestParam("gender") String gender,
	@RequestParam("dob") String dob,
	@RequestParam("phone_number") String phone_number,
	@RequestParam("email") String email){

		try
		{
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer_managements","root","");
			Statement stmt = con.createStatement();
			
			PreparedStatement pst = con.prepareStatement("insert into customers(name,gender,dob,phone_number,email) values(?,?,?,?,?);");
			pst.setString(1,name);
			pst.setString(2, gender);
			pst.setString(3, dob);
			pst.setString(4, phone_number);
			pst.setString(5, email);
			int rowsAffected = pst.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}

		return "redirect:/home";
		
	}

	@GetMapping("/customers")
	public String getCustomers(Model model) {
		return "home";
	}


	@GetMapping("/customer/update")
	public String updatecustomers(@RequestParam("customer_id") String idStr,Model model) {
		try {
			int id = Integer.parseInt(idStr);
			// rest of the code
		  } catch (NumberFormatException e) {
			model.addAttribute("errorMessage", "Invalid customer id. Please provide a valid integer value.");
			return "error";
		  } catch (Exception e) {
			System.out.println("Exception:" + e);
		  }
		String name,gender,dob,email;
		int customer_id,phone_number;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer_managements","root","");
			Statement stmt = con.createStatement();
			ResultSet rst = stmt.executeQuery("select * from customers where id = "+idStr+";");
			
			if(rst.next())
			{
			customer_id = rst.getInt(1);
			name = rst.getString(2);
			gender = rst.getString(3);
			dob = rst.getString(4);
			phone_number = rst.getInt(5);
			email =  rst.getString(6);
			model.addAttribute("customer_id",customer_id);
			model.addAttribute("name",name);
			model.addAttribute("gender",gender);
			model.addAttribute("dob",dob);
			model.addAttribute("phone_number",phone_number);
			model.addAttribute("email",email);
			}
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}
		return "customerUpdate";
	}

	@RequestMapping(value = "/customer/updateData",method=RequestMethod.POST)
	public String updatecustomerstodb(@RequestParam("customer_id") String id,
	@RequestParam("name") String name,
	@RequestParam("dob") String dob,
	@RequestParam("phone_number") String phone_number,
	@RequestParam("email") String email) 
	
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer_managements","root","");
			
			PreparedStatement pst = con.prepareStatement("update customers set name= ?,dob = ?,phone_number = ?, email = ? where id = ?;");
			pst.setString(1, name);
			pst.setString(2, dob);
			pst.setString(3, phone_number);
			pst.setString(4, email);
			pst.setString(5, id);
			int i = pst.executeUpdate();			
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}
		return "redirect:/customers";
	}

	
}
