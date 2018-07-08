<?php include 'server.php' ?>

<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="UTF-8">
    <title>Untitled Document</title>
	<meta name="Author" content=""/>
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	 <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
  <style>
      span{
          position: relative;
          bottom: -30px;
          right: 20px;
          left: -3px;
      }
     
    
    </style>
   <div class="row">
       <div class="container col-xl-4 col-xs-6 col-sm-5 col-md-4">
         <form id="header" action="signin.php" method="post">
            <?php include 'errors.php' ?>
             <div class="card">
                <div class="card-header">
                    Login
                </div>
                 
            <div class="card-body">
              <div class="form-group">
               <span><i class="fa fa-user-circle-o " aria-hidden="true"></i></span>
                <input type="text" class="form-control"  placeholder="Enter first Name" name="first_name">
              </div>
              <div class="form-group">
                <span><i class="fa fa-lock " aria-hidden="true"></i></span>
                <input type="password" class="form-control"  placeholder="Password" name="password">
              </div>
              <div class="row">
            <div class="col-md-6">
              <div class="form-group ">
                <a href="#">Forgot Password?</a>
              </div>
               </div>
             <div class="col-md-6  pull-right">
              <div class="form-group ">
                <a href="../includes/signup.php">Sign Up</a>
              </div>
               </div>
             
               </div>
                <button type="submit" class="btn btn-primary" name="login_user">Submit</button>
</div>
  </div>                   
   </form>
    </div>
    
</div>
    <br><br>
<?php include 'footer.php' ?>
