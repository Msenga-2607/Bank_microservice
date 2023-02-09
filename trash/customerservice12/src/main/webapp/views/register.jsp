<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <title>Bank System | Customer Register</title>
</head>

<body>
  <div class="row mt-3">
    <div class="col-8 mx-auto">
      <div class="card">
        <h5 class="card-header">Customer</h5>
        <div class="card-body m-2">
          <h5 class="card-title">Register New customer</h5>
        
          <% if (request.getParameter("status")!=null) { %>
            <div class="alert alert-primary" role="alert">
              Customer Added Successfully
            </div> 
          <% } 
            %>

            <form action="addcustomer" method="POST">
              <div class="row">
                <div class="col">
                  <input type="text" class="form-control" name="name" placeholder="Fullname">
                </div>
                <div class="col">
                  <input type="date" class="form-control" name="dob">
                </div>
              </div>

              <div class="row mt-2">
                <div class="col">
                  <select name="gender" class="form-control">
                    <option selected>Select Gender</option>
                    <option value="F">Female</option>
                    <option value="M">Male</option>
                  </select>
                </div>
                <div class="col">
                  <input type="text" class="form-control" name="phone_number" placeholder="Phone number">
                </div>
              </div>

              <div class="row mt-2">
                <div class="col">
                  <input type="email" class="form-control" name="email" placeholder="email">
                </div>
              </div>

              <div class="row mt-2">
                <div class="col">
                  <input type="submit" value="Submit" class="btn btn-primary">
                </div>
              </div>
            </form>
        </div>
      </div>
    </div>
  </div>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
</body>

</html>