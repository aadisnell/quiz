
 <?php
    if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 


	// variable declaration
	$username = "";
    $password = "";
    $pass_repeat = "";
    $phone = "";
	$email    = "";
	$errors = array(); 
	$_SESSION['success'] = "";

	// connect to database
	$db = mysqli_connect('localhost', 'root', '@snELL0541', 'quiz');

	// REGISTER USER
	if (isset($_POST['signup_user'])) {
		// receive all input values from the form
		$first_name = mysqli_real_escape_string($db, $_POST['first_name']);
		$email = mysqli_real_escape_string($db, $_POST['email']);
        $phone = mysqli_real_escape_string($db, $_POST['phone']);
		$password = mysqli_real_escape_string($db, $_POST['password']);
		$pass_repeat = mysqli_real_escape_string($db, $_POST['pass_repeat']);

		// form validation: ensure that the form is correctly filled
		if (empty($first_name)) { array_push($errors, "First Name is required"); }
		if (empty($email)) { array_push($errors, "Email is required"); }
        if (empty($phone)) { array_push($errors, "Phone Number is required"); }
		if (empty($password)) { array_push($errors, "Password is required"); }
        if (empty($pass_repeat)) { array_push($errors, "Password is required"); }
        
		if ($password != $pass_repeat) {
			array_push($errors, "The two passwords do not match");
		}

		// register user if there are no errors in the form
		if (count($errors) == 0) {
			$password = md5($password);//encrypt the password before saving in the database
			$query = "INSERT INTO users (first_name, email, password,phone) 
					  VALUES('$first_name', '$email','$password', '$phone')";
			mysqli_query($db, $query);

			$_SESSION['first_name'] = $first_name;
			$_SESSION['success'] = "You are now logged in";
			header('location: ../index.php');
		}

	}

	// ... 

	// LOGIN USER
	if (isset($_POST['login_user'])) {
		$first_name = mysqli_real_escape_string($db, $_POST['first_name']);
		$password = mysqli_real_escape_string($db, $_POST['password']);

		if (empty($first_name)) {
			array_push($errors, "Name is required");
		}
		if (empty($password)) {
			array_push($errors, "Password is required");
		}

		if (count($errors) == 0) {
			$password = md5($password);
			$query = "SELECT * FROM users WHERE first_name = '$first_name' AND password='$password'";
			$results = mysqli_query($db, $query);

			if (mysqli_num_rows($results) == 1) {
				$_SESSION['first_name'] = $first_name;
				$_SESSION['success'] = "You are now logged in";
				header('location: ../index.php');
			}else {
				array_push($errors, "Wrong username/password combination");
			}
		}
	}

?>