<!DOCTYPE html>
<html>
<?php
if(!isset($_SERVER['HTTP_REFERER'])){
    // redirect them to your desired location
    header('location: index.php');
    exit;
}

?>
<head>
	<title>Student Page-CEC</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="editor.css">
	
	<style>
		.jumbotron {
  		background-color: #f4511e; /* Orange */
 		 color: #ffffff;
		}
	</style>
	<script type="text/javascript">
	function jump()
	{
		window.location.href="lsubmissions.php";
	}
	</script>
	</head>
<body>
<?php
//session_start();
	//$sub=$_SESSION["sbt"];
	//$sem=$_SESSION["smr"];
?>
<?php
	$_SESSION['myValue1']="name"; 
	$_SESSION['myValue2']="hi"; 
	$_SESSION['myValue3']="bi"; 
	
	

if(isset($_POST["aprv"]))
{
	echo "<script type='text/javascript'> alert('This Problem Solving Technique is Approved'</script>";
	
	echo "<script>jump();</script>";
	
}
if(isset($_POST["decln"]))
{
	 echo "<script type='text/javascript'> alert('This Problem Solving Technique is Declained'</script>";
	echo "<script>jump();</script>";
}



?>
<div class="jumbotron text-center" ><br/>
    <div><img  src="https://www.canaraengineering.in//assets/images/logo.png" alt="Canara" height="150px" width="150px">
    <h1>Canara Engineering College</h1>
    <h2 style="color:#000000;">RECORD SUBMISSION SYSTEM<h2>
  </div>
  </div>
  
  <footer class="container-fluid text-center">
  <a href="editor.html" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>

  <p>&copy; 2019 Canara Enginnering College | All rights are reserved | Designed by Vinayaka-Winston</p> <a href="https://www.canaraengineering.in" title="CEC">www.canaraengineering.in</a></p>
</footer>
</body>

</html>