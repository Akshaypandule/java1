<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
    crossorigin="anonymous">
    <title>Handling complex form</title>
  </head>
  <body class="" style="background: #2e2e2;">
  	<div class="container mt-4">
  		<div class="col-md-6 offset-md-3">
  			<div class="card">
  				<div class="card-body">
  					<h3 class="text-center">Complex form</h3>
  					<div class="alert alert-danger" role="alert">
  					<form:errors path="student.*"/>
  							This is a danger alert—check it out!</div>
  						<form action="handleform" method="post">
  							<div class="form-group">
  								<label for="exampleInputEmail1">Your Name</label>
   								 <input name="name" type="text" class="form-control" id="exampleInputEmail1" 
    							aria-describedby="emailHelp" placeholder="Enter Name">
    							<small id="emailHelp" 
    							class="form-text text-muted">We'll never share your email with anyone else.
    							</small>
  							</div>
  							<div class="form-group">
  								<label for="exampleInputEmail1">Your Id</label>
   								 <input name="id" type="text" class="form-control" id="exampleInputEmail1" 
    							aria-describedby="emailHelp" placeholder="Enter Id">
    						</div>
    						<div class="form-group">
  								<label for="exampleInputEmail1">Your DOB</label>
   								 <input name="date" type="text" class="form-control" id="exampleInputEmail1" 
    							aria-describedby="emailHelp" placeholder="yyyy/mm/dd">
    						</div>
    						<div class="form-group">
  								<label for="exampleInputEmail1">Select Cources</label><select
   								 name="subject" type="text" class="form-control" id="exampleInputEmail1" 
    							 multiple
    							<option>Java</option>
    							<option>C#</option>
    							<option>C++</option>
    							<option>Spring</option>
    							<option>Spring boot</option>
    							<option>Python</option>
    							></select>
    						</div>
    						<div class="form-group">
    							<span class="mr-3">Select Gender</span>
    							<div class="form-check form-check-inline">
   								 <input name="gender" type="radio" class="form-check-input" id="inlineRadio1" 
    							value="male"><label class="form-check-label" for="inlineRadio1">Male</label>
    							</div>
    							<div class="form-check form-check-inline">
   								 <input name="gender" type="radio" class="form-check-input" id="inlineRadio1" 
    							value="male"><label class="form-check-label" for="inlineRadio1">FeMale</label>
    							</div>
    						</div>
    						<div class="form-group">
    							<label for="">Select Type</label>
    							<select class="form-control" name="type">
    								<option Value="oldStudet" >Old student</option>
    								<option value="NewStudent">New Student</option>
    							</select>
    						</div>
    						<div class="card">
    						<div class="card-body">
    						<p>Your Address</p>
    						
    						<div class="form-group">
    							<input name="address.street"
    							type="text" 
    							class="form-control" 
    							placeholder="Enter street"/>
    						
    						</div>
    						<div class="form-group">
    							<input name="address.city"
    							type="text" 
    							class="form-control"
    							 placeholder="Enter city"/>
    						</div>	
    						</div>
    						</div>
    						<div class="contaniner text-center">
    						<button type="submit" class="btn btn-primary">Submit</button>
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