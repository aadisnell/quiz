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
/*          position: relative;*/
          bottom: -30px;
          right: 20px;
          left: -3px;
      }
     
    
    </style>
   <div class="row">
       <div class="container col-xl-4 col-xs-6 col-sm-5 col-md-4">
         <form id="header" action="signup.php" method="post">
            <?php include('errors.php'); ?>
             <div class="card">
                <div class="card-header">
                   Sign Up
                </div>
                 
            <div class="card-body">
              <div class="form-group">
                <span><i class="fa fa-user-circle-o " aria-hidden="true"></i></span>
                <input type="text" class="form-control"  placeholder="Enter your first name" name="first_name">
              </div>
               <div class="form-group">
                 <span><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
                <input type="email" class="form-control"  placeholder="Enter your email" name="email">
              </div>
               <div class="form-group">
                 <span><i class="fa fa-phone" aria-hidden="true"></i></span>
                <input type="phone" class="form-control"  placeholder="Enter your phone number" name="phone">
              </div>
              <div class="form-group">
                 <span><i class="fa fa-lock " aria-hidden="true"></i></span>
                <input type="password" class="form-control" placeholder="Password" name="password">
              </div>
              <div class="form-group">
                 <span><i class="fa fa-lock " aria-hidden="true"></i></span>
                <input type="password" class="form-control" placeholder="Repeat Password" name="pass_repeat">
                </div>
            
              <div class="form-group ">
                <p>Already have an account <a href="../includes/signin.php">Login?</a></p>
                </div>
              
                <button type="submit" class="btn btn-primary" name="signup_user">Submit</button>
</div>
  </div>                   
   </form>
    </div>
    
</div>
    <br><br>
<?php include '../includes/footer.php' ?>
