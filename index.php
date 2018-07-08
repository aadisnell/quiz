
<?php include 'includes/header.php' ?>
 
     <?php include 'includes/server.php' ?>

     
<!--
      <h1 class="my-4">Welcome to Modern Business</h1>
      
      <ul class="nav nav-pills mb-3" id="mytab" role="tablist">
          <li class="nav-item">
              <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Home</a>
            </li>
          <li class="nav-item">
              <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
            </li>
          <li class="nav-item">
              <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Contact</a>
            </li>
              <li class="nav-item">
              <a class="nav-link" id="service-tab" data-toggle="tab" href="#service" role="tab" aria-controls="service" aria-selected="false">Service</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" id="about-tab" data-toggle="tab" href="#about" role="tab" aria-controls="about" aria-selected="false">About</a>
            </li>
            
      </ul>
-->
<!--
      <div class="tab-content" id="myTabContent">
          <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">Hello</div>
            
          <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">Hello</div>
             
        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">Hello</div>
             
         <div class="tab-pane fade" id="service" role="tabpanel" aria-labelledby="service-tab">Hello</div>
             
          <div class="tab-pane fade" id="about" role="tabpanel" aria-labelledby="about-tab">Hello</div>
              
      </div>
-->
<form method="post" ?>

<?php

$q=mysqli_query($db,"SELECT * FROM questions ORDER BY rand() LIMIT 1 " );
echo '<div class="panel" style="margin:5%">';
while($row=mysqli_fetch_array($q) )
{
$text=$row['text'];
$question_number=$row['question_number'];
echo '<b>'.$text.'</b><br>';
}
$q=mysqli_query($db,"SELECT * FROM choices WHERE question_number='$question_number'" );
echo '
<br />';
while($row=mysqli_fetch_array($q) )
{
$text=$row['text'];
$question_number=$row['question_number'];
echo'<input type="radio" name="ans" value="'.$question_number.'">'.$text.'<br />';
}
echo'
<br/>
<button type="submit" name="submit" class="btn btn-primary">Submit</button>';
		
        $selected_answer = "";
        $text=$row['text'];
        $is_correct = '';
        
	if(isset($_POST['submit']) ){ // target the submit button 
//         if(isset($_POST["ans"]) AND !empty($_POST["ans"])){ // target the radio button 
//              $selected_answer = $_GET['ans'];
//             echo $selected_answer;
//         }
//        echo "hello";
//        $selected_answer = $_POST["ans"];
//        $q=mysqli_query($con,"SELECT * FROM choices WHERE is_correct='$is_correct' AND text = '$text'" );
    
}
    
?>
   </form>  


    <!-- /.container -->

    <!-- Footer -->
    
   <?php include './includes/footer2.php' ?>