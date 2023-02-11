<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Bank System | Add Staffs</title>
  </head>
  <body>

    <div class="row mt-3">
        <div class="col-4 mx-auto">
            <div class="card">
                <h5 class="card-header">Register Staff</h5>
                <div class="card-body m-2">
                  <h5 class="card-title">Add Staff Information</h5>
                
                  <% if (request.getParameter("status")!=null) { %>
                    <div class="alert alert-primary" role="alert">
                      Staff Added Successfully
                    </div> 
                  <% } 
                    %>
        
                    <form action="addstaff" method="POST">
                      <div class="row">
                        <div class="col">
                          <input type="text" class="form-control" name="name" placeholder="Fullname">
                        </div>
                        <div class="col">
                          <input type="password" class="form-control" name="password" placeholder="password">
                        </div>
                      </div>
        
                      <div class="row mt-2">
                        <div class="col">
                          <select name="position" class="form-control">
                            <option selected>Select Position</option>
                            <option value="Accountant">Accountant</option>
                            <option value="Teller">Teller</option>
                            <option value="Manager">Manager</option>
                          </select>
                        </div>
                      </div>
                      <div class="row mt-2">
                            <button type="submit" class="btn btn-primary mx-3">submit</button>
                            <a href="/" class="btn btn-success">all staffs</a>
                      </div>
                    </form>
                </div>
              </div>

        </div>
      </div>
    

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    -->
  </body>
</html>
