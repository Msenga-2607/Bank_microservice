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

    <title>Bank System | Accounts</title>
  </head>
  <body>
    

    <div class="container">
      <div class="row">
        <div class="col-12 col-md-6 mx-auto">
          <h1>Customer Accounts</h1>
        </div>
      </div>

      <div class="row mt-5">
        <div class="col-12 mx-auto">

          <table class="table table-bordered">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Customer</th>
                <th scope="col">Number</th>
                <th scope="col">Balance</th>
                <th></th>
              </tr>
            </thead>
            <tbody>

              <%
              try {
                String url = "jdbc:mysql://localhost:3306/accountservice";
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, "root", "");
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("select * from accounts");
              %>
              <%
              int count = 1;
              while (rs.next()) {
              %>

              <tr>
                <th scope="row"><%= count++ %></th>
                <td><%= rs.getString(3) %></td>
                <td><%= rs.getString(4) %></td>
                <td><%= rs.getString(5) %></td>
                <td>
                  <a href="#" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#exampleModal<%= rs.getString(1) %>">Apply loan</a>
                  
                </td>
              </tr>

<!-- Modal -->
<div class="modal fade" id="exampleModal<%= rs.getString(1) %>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Apply Loan</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <h2 class="text-center mb-5">Apply Loan</h2>
        <form action="applyLoan" method="post">
          <input type="hidden" name="customer_id" value="<%= rs.getString(2) %>">
          <input type="hidden" name="name" value="<%= rs.getString(3) %>">
          <div class="form-group">
            <label for="Amount">Amount:</label>
            <input type="text" class="form-control" name="amount" placeholder="Enter amount required">
          </div>
          <div class="form-group">
            <label for="Purpose">Purpose:</label>
            <select class="form-control" name="purpose">
              <option selected disabled>Select purpose</option>
              <option value="Education">Education</option>
              <option value="Home Improvement">Home Improvement</option>
              <option value="Business">Business</option>
              <option value="Emergency">Emergency</option>
            </select>
          </div>
          <div class="form-group">
            <label for="CreditHistory">Credit History:</label>
            <select class="form-control" id="CreditHistory" name="credit_history">
              <option selected disabled>Select credit history</option>
              <option value="New">New</option>
              <option value="Good">Good</option>
              <option value="Average">Average</option>
              <option value="Excellent">Excellent</option>
            </select>
          </div>
          <input type="hidden" name="status" value="pending">
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
    </div>
  </div>
</div>



              <% } %>
            </tbody>
          </table>

          <%
		} catch (Exception ex) {
		out.println("Exception Occurred:: " + ex.getMessage());
		}
		%>
          
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
