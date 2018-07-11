<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>SSQ || ADMIN </title>
<link  rel="stylesheet" href="css/bootstrap.min.css"/>
 <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>    
 <link rel="stylesheet" href="css/main.css">
 <link  rel="stylesheet" href="css/font.css">
 <script src="js/jquery.js" type="text/javascript"></script>

  <script src="js/bootstrap.min.js"  type="text/javascript"></script>
  <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>


</head>
<?php
$con= new mysqli('localhost','root','','ssqdb')or die("Could not connect to mysql".mysqli_error($con));
    
if(isset($_POST['submit'])){
		//Get post variables
		$question_number = $_POST['question_number'];
		$question_text = $_POST['question_text'];
		$correct_choice = $_POST['correct_choice'];
		//Choices array
		$choices = array();
		$choices[1] = $_POST['choice1'];
		$choices[2] = $_POST['choice2'];
		$choices[3] = $_POST['choice3'];
		$choices[4] = $_POST['choice4'];
		$choices[5] = $_POST['choice5'];
		
		//Question query
		$query = "INSERT INTO `fwc_questions`(question_number, text)
					VALUES('$question_number','$question_text')";
					
		//Run query
		$insert_row = $con->query($query) or die($con->error.__LINE__);
		
		//Validate insert
		if($insert_row){
			foreach($choices as $choice => $value){
				if($value != ''){
					if($correct_choice == $choice){
						$is_correct = 1;
					} else {
						$is_correct = 0;
					}
					//Choice query
					$query = "INSERT INTO `fwc_choices` (question_number, is_correct, text)
							VALUES ('$question_number','$is_correct','$value')";
							
					//Run query
					$insert_row = $con->query($query) or die($mysqli->error.__LINE__);
					
					//Validate insert
					if($insert_row){
						continue;
					} else {
						die('Error : ('.$con->errno . ') '. $con->error);
					}
				}
			}
			$msg = 'Question has been added';
		}
	}    
    
    
$query = "SELECT * FROM `fwc_questions`";
	//Get The Results
	$questions = $con->query($query) or die($con->error.__LINE__);
	$total = $questions->num_rows;
	$next = $total+1;    
    
?> 
<body>  
<main>   
<?php
if(isset($msg)){
echo '<center><p>'.$msg.'</p></center>';
}
?>    
    
<div class="row"><br> 
<span class="title1" style="margin-left:40%;font-size:25px;"><b>Enter Quiz Details</b></span><br /><br />

<div class="col-md-3"></div><div class="col-md-6">   <form class="form-horizontal title1" name="form" method="POST" action="addquestion_fwc.php">
<fieldset>
 
<center><p><label>Question Number :&nbsp;&nbsp; </label><input type="number" value="<?php echo $next; ?>" name="question_number" /></p></center>
    
<!-- Text input-->
<div class="form-group">
  <label class="col-md-12 control-label" for="name"></label>  
  <div class="col-md-12">
  <input id="question_text" name="question_text" placeholder="Enter Question" class="form-control input-md" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-12 control-label" for="name"></label>  
  <div class="col-md-12">
  <input id="choice1" name="choice1" placeholder="Enter Option 1" class="form-control input-md" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-12 control-label" for="name"></label>  
  <div class="col-md-12">
  <input id="choice2" name="choice2" placeholder="Enter Option 2" class="form-control input-md" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-12 control-label" for="name"></label>  
  <div class="col-md-12">
  <input id="choice3" name="choice3" placeholder="Enter Option 3" class="form-control input-md" type="text">
    
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-12 control-label" for="name"></label>  
  <div class="col-md-12">
  <input id="choice4" name="choice4" placeholder="Enter Option 4" class="form-control input-md" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-12 control-label" for="name"></label>  
  <div class="col-md-12">
  <input id="choice5" name="choice5" placeholder="Enter Option 5" class="form-control input-md" type="text">
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-12 control-label" for="time"></label>  
  <div class="col-md-12">
  <input id="correct_choice" name="correct_choice" placeholder="Enter the correct option" class="form-control input-md" min="1" max="5" type="number"> 
  </div>
</div>

<div class="form-group">
  <label class="col-md-12 control-label" for=""></label>
  <div class="col-md-12"> 
      <input type="submit" name="submit" value="Submit" class="btn btn-default"/>
      <a href="dash.php" class="btn btn-default" style="float:right">Go Back To Dashboard</a>
  </div>
</div>
    
    


</fieldset>
</form></div>';
    </div>    
</main>     
    </body>
    
</html>

