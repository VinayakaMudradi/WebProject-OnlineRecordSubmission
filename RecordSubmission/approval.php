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
	<script type="text/javascript">
	history.pushState(null, null, location.href);
    window.onpopstate = function () {
        history.go(1);
    };
	</script>
	<style>
		.jumbotron {
  		background-color: #f4511e; /* Orange */
 		 color: #ffffff;
		}
		#student {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#student td, #student th {
  border: 1px solid #ddd;
  padding: 8px;
}

#student tr:nth-child(even){background-color: #f2f2f2;}

#student tr:hover {background-color: #ddd;}

#student th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}

		</style>
	</head>
<body>
<div class="jumbotron text-center" ><br/>
    <div><img  src="https://www.canaraengineering.in//assets/images/logo.png" alt="Canara" height="150px" width="150px">
    <h1>Canara Engineering College</h1>
    <h2 style="color:#000000;">RECORD SUBMISSION SYSTEM</h2>
  </div>
  </div>


<?php


if(isset($_POST["submit3"]))
{
	echo "<center><b><h3 style='color:red;'>Approved Submissions</h3></b><center>";
$usn=$_POST["usns"];
$name=$_POST["names"];
$conn=mysqli_connect("localhost","root","vinayaka","recordsubmit");
$query1="select Sem from student where USN='$usn'";
$result1=mysqli_query($conn,$query1);
$row=mysqli_fetch_assoc($result1);
$sem= $row["Sem"];
$query2="select * from subjectList where SEM='$sem'";
$result2=mysqli_query($conn,$query2);
while($row1=mysqli_fetch_assoc($result2))
{
	//echo $row1["SUBJECT"];
	$sub=$row1["SUBJECT"];
	$query3="select * from submission where SUBJECT='$sub' and USN='$usn' and STATUS='APPROVED'";
	$result3=mysqli_query($conn,$query3);
	$count=mysqli_num_rows($result3);
	$i=1;
	echo "<div class='table-responsive'>";
	echo "<table id='student'>";
	echo "<tr><th colspan='5' style='text-align:center;background-color:red;' >" .$sub."</th></tr>";
	echo "<tr><th style='width:5%;'>Sl. No.</th><th style='width:9%;'>Program No.</th><th style='width:61%;'>Statement</th><th style='width:20%;'>Comments</th><th style='width:5%;'>Status</th></tr>";
	if($count==0)
	{
		echo "<tr><td colspan='5' style='text-align:center;'>No Approved Submissions Found...!</td></tr>";
		
	}
	else{
	while($row2=mysqli_fetch_assoc($result3))
	{
		echo "<tr>";
		 echo "<td>".$i."</td>";
		 ?>
		 <td><?php echo $row2["PRGNO"] ?></td>
		<!--echo "<td><a href='details.php'".$row["USN"]."</td>";-->
		 
		<td><?php echo $row2["STATEMENT"] ?></td>
		 <?php
		 echo "<td>".$row2["COMMENTS"]."</td>";
		  echo "<td style='color:green;'>".$row2["STATUS"]."</td>";
		 echo "</tr>";
		 $i++;
	}
	}
	 echo "</table></div><br/><br/>";
}

}

?>
<center><a href="homeStudent.php"><input type="submit" value="BACK" name="submit2"  class="txt2" ></a></center>
<footer class="container-fluid text-center">
  <a href="editor.html" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>

  <p>&copy; 2019 Canara Enginnering College | All rights are reserved | Designed by Vinayaka-Winston</p> <a href="https://www.canaraengineering.in" title="CEC">www.canaraengineering.in</a></p>
</footer>
</body>
</html>