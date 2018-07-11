<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>SSQ || ACN </title>
<link  rel="stylesheet" href="css/bootstrap.min.css"/>
 <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>    
 <link rel="stylesheet" href="css/main.css">
 <link  rel="stylesheet" href="css/font.css">
 <script src="js/jquery.js" type="text/javascript"></script>

  <script src="js/bootstrap.min.js"  type="text/javascript"></script>
  <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
  <script type="text/javascript">
        
        function timeout()
        {
            var minutes = Math.round((timeLeft - 30)/60);
            var seconds = timeLeft % 60;
            if (timeLeft<=0)
                {
                   clearTimeout(tm); document.getElementById("form1").submit();
                }
                else
                {
                   document.getElementById("time").innerHTML=minutes+ ":" +seconds; 
                }
                timeLeft--;
                var tm =setTimeout(function(){timeout()},1000);
        }
        
    </script>


</head>
<body onload="timeout()"> 
<header>
<div class="container">
	<center><h1>Spanish La Liga Quiz</h1></center>
    <script type="text/javascript">
        
            var timeLeft = 16;
            
    </script>
    <center><h2 id="time">Timeout</h2></center>
</div>
</header>
    
<main>
<?php session_start(); ?>
<?php  
    
//all the variables defined here are accessible in all the files that include this one
$con= new mysqli('localhost','root','','ssqdb')or die("Could not connect to mysql".mysqli_error($con));   
?>
<?php    
$q=mysqli_query($con,"SELECT * FROM sll_questions ORDER BY rand() LIMIT 1 " );
?>    
<div class="panel" style="margin:1% 20% 10% 20%">
<?php    
while($row=mysqli_fetch_array($q) )
{
$text=$row['text'];
$question_number=$row['question_number'];
echo '<b>'.$text.'</b><br>';
}
?>
<?php    
$choices=mysqli_query($con,"SELECT * FROM sll_choices WHERE question_number='$question_number'" );    
?>
<?php    
$answer=mysqli_query($con,"SELECT * FROM sll_choices WHERE question_number='$question_number' AND is_correct = '1' " );    
?>    
<form method="POST" id = "form1" class="form-horizontal" action="process.php">
<br />
<ul class="choices">    
<?php while($row=$choices->fetch_assoc()): ?>
    <input type="radio" name="choice" value="<?php echo $row['is_correct'];?>"> <?php echo $row['text']; ?><br /> 
<?php endwhile; ?>    
</ul>  
<ul class="answer">    
<?php while($row=$answer->fetch_assoc()): ?>
    <input type="hidden" name="answer" value="<?php echo $row['text'];?>"> <?php $correct_answer = $row['text']; ?><br /> 
<?php endwhile; ?>    
</ul>    
<input type="submit" value="Submit" />   
    </form>    
</div>    
</main>     
</body><br><br><br><br><br>
<footer>
<div class="container">
    <center>Copyright &copy; 2018, Smart Soccer Quiz</center>
</div>
</footer>
    
</html>
