<?php include 'dbConnection.php'; ?>
<?php session_start(); ?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1">    
<meta charset="utf-8" />
<title>SSQ||Quiz Page</title>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<script src="js/bootstrap.min.js"  type="text/javascript"></script>
<link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>    
<link rel="stylesheet" href="css/main.css">
<link  rel="stylesheet" href="css/font.css">
<script src="js/jquery.js" type="text/javascript"></script>    
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>    
</head>
<body>
<header>
<div class="container">
    <center><h1>Results</h1></center>
</div>
</header>
	<main>
<div class="panel" style="margin:1% 20% 10% 20%">
<?php
	//Check to see if score is set_error_handler
	if(!isset($_SESSION['score'])){
		$_SESSION['score'] = 0;
	}
    
    //if user does not select an option
    if (!isset($_POST['choice'])){
    echo "<center><h2>Sorry you lost: You failed select an option</h2></center><br>";
    $_SESSION['score'] = 0;
    echo '<center><a href="categorytab.php" class="btn btn-default" style="text-decoration:none; color:black;">Play Again</a></center><br>'; 
    echo '<center><a href="logout.php" class="btn btn-default" style="text-decoration:none; color:black;">Log Out</a></center>';    
    return;
    }
    
?>
<?php   
    
    if($_POST){
		
        $selected_choice = $_POST['choice'];
        $correct_answer = $_POST['answer'];
        if ($selected_choice == 1)   
        {
            $_SESSION['score'] = 1;
            echo '<center><h2>Congratulations!!! You Won</h2></center><br>';
        }
        else
        {
            echo "<center><h2>Sorry That's Incorrect </h2></center><br>";
            echo '<center><strong><p>The Correct answer is: <tr>'.$correct_answer.'</tr></p></strong></center><br>';
            echo "<center><h3>Better Luck Next Time!!! </h3></center><br>";
        }   
            
        }
?>            
    <center><a href="categorytab.php" class="btn btn-default"  style="text-decoration:none; color:black;">Play Again</a></center><br>
    <center><a href="logout.php" class="btn btn-default" style="text-decoration:none; color:black;">Log Out</a></center>
</div>
	</main>
	<footer>
		<center><div class="container">
			Copyright &copy; 2018, Smart Soccer Quiz
		</div></center>        
	</footer>
</body>
</html>
