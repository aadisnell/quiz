<!DOCTYPE html>
<html lang="en">
<head>
  <title>SSQ || Categories</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<nav class="navbar navbar-inverse" >
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#" style="color:orange">Categories</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#" style="color:orange">Home</a></li> 
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color:orange">Africa Cup of Nations
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <center><li><a href="acnQuiz.php" style="color:black">Start Quiz</a></li></center>    
        </ul>
      </li>   
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color:orange">English Premier League
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
         <center><li><a href="eplQuiz.php" style="color:black">Start Quiz</a></li></center>    
        </ul>
      </li> 
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color:orange">FIFA World Cup
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
           <center><li><a href="fwcQuiz.php" style="color:black">Start Quiz</a></li></center>
        </ul>
      </li> 
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color:orange">Spanish La Liga
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <center><li><a href="sllQuiz.php" style="color:black">Start Quiz</a></li></center>    
        </ul>
      </li> 
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color:orange">UEFA Champions League
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <center><li><a href="uclQuiz.php" style="color:black">Start Quiz</a></li></center>
        </ul>
      </li> 
    </ul>
    <ul class="nav navbar-nav navbar-right">
        <?php
        include_once 'dbConnection.php';
        session_start();
          if(!(isset($_SESSION['email']))){
        header("location:index.php");

        }
        else
        {
        $name = $_SESSION['name'];
        $email=$_SESSION['email'];

        include_once 'dbConnection.php';
        
        echo '<li><a href="#" data-toggle="modal" style="color:orange"><span class="glyphicon glyphicon-user"></span> Hello, '.$name.'</a></li>';    
        }?> 
        
        <li><a href="#" data-toggle="modal" data-target="#logoutModal" style="color:orange"><span class="glyphicon glyphicon-log-in"></span> Log Out</a></li>
        
    </ul> 
      

 
      
      
<!-- Log out modal -->
<div class="modal" id="logoutModal" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <center><h4 style="color:orange">Log Out <i class="fa fa-lock"></i></h4></center>
      </div>
      <div class="modal-body">
        <center><p><i class="fa fa-question-circle"></i> Are you sure you want to log out? <br /></p></center>
        <div class="actionsBtns">
            <form action="/logout" method="post">
                    <center><a href="logout.php" class="btn btn-default" style="margin-right: 5px">Yes</a>
	                <button class="btn btn-default" data-dismiss="modal">No</button></center>
            </form>
        </div>
      </div>
    </div>
  </div>
</div>   
      
  </div>
</nav>
  
<div class="container">
  <h3 style="font-size: 35px;">Please Take Note of The Following:</h3>
  <ul style="font-size: 25px;">
    <li>The moment you click on a category, a question pops out and the timer starts reading.</li>
    <li>You have only 15 seconds to tick an answer and submit your response.</li>
    <li>The system will automatically submit your answer after the 15 seconds even if you fail to click on submit.</li>
    <li>If you fail to tick an answer within the 15 seconds, the system will automatically send you back to the home page which means you've lost.</li>
  </ul>
  <h4 style="font-size: 35px;">We wish you the best of luck!!!</h4>
</div><br><br><br><br><br><br><br><br><br><br>
    
<div class="row footer" style="color:black">
    <center><div class="container">
			Copyright &copy; 2018, Smart Soccer Quiz
		</div></center>
    
</div>
    
    

</body>
</html>
