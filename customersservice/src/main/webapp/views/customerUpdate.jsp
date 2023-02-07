<%@page import="java.sql.*"%>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <title>Bank System | Customers</title>
</head>

<body>
  <div class="row mt-3">
    <div class="col-6 mx-auto">
      <div class="card">
        <h5 class="card-header">Customer Information</h5>
        <div class="card-body m-2">
          <h5 class="card-title">Edit Customer ${name}</h5>
            
          <form action="updateData" method="post">
            <input type="hidden" name="customer_id" value="${customer_id}">
            <div class="row">
                <div class="col-6">
                    <div class="form-group">
                        <label for="">Fullname</label>
                        <input type="text" class="form-control" name="name" value="${name}">
                      </div>
                    
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <label for="">Date of Birth</label>
                        <input type="date" class="form-control" name="dob" value="${dob}">
                      </div>
                    
                </div>
              </div>
    
              <div class="row">
                <div class="col-6">
                    <div class="form-group">
                        <label for="">Phone Number</label>
                        <input type="text" class="form-control" name="phone_number" value="${phone_number}">
                      </div>
                    
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <label for="">Email</label>
                        <input type="email" class="form-control" name="email" value="${email}">
                      </div>
                    
                </div>
              </div>
    
              <div class="row">
                <div class="col">
                    <input type="submit" class="btn btn-primary" value="update">

                    <a href="/customers">
                        <i class="btn btn-success ml-3">Back</i>
                    </a>
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