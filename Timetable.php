  <?php 
  // Start the session
  session_start();
  $con=mysqli_connect("localhost","root","","doit");
	// Check connection
	if ($con->connect_error) {
		die("Connection failed: " . $con->connect_error);
	}
 if(isset($_GET['assign'])){
 	$Department=$_GET['assign'];
	$Semester=$_GET['semester'];
	$_SESSION["DEPT"] = $Department;
	$_SESSION["SEM"] = $Semester;
 	$query="select * from dtable where dept='$Department' AND sem='$Semester'";
    $result = mysqli_query($con, $query);
    if(mysqli_num_rows($result) > 0){
?>
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Assign Subject</title>
	 
  <script>tinymce.init({selector:'textarea'});</script>
 <script src="JS/jquery-1.10.2.js"></script>
		<script src="JS/jquery-ui.js"></script>
		<script src="JS/myScript.js"></script>
        <script type="text/JavaScript">
			function State(){
				$('#stname').empty();
				$('#stname').append("<option>Loading....</option>");
				$('#iname').append("<option value=''>--Select --</option>");
				$.ajax({
					type:"POST",
					url:"statelist.php",
					contentType:"application/json; charset=utf-8",
					dataType:"json",
					success: function(data){
						$('#stname').empty();
						$('#stname').append("<option value=''>---- Select Subject ----</option>");
						$.each(data,function(itm){
							$('#stname').append('<option value="'+ data[itm].state +'">'+ data[itm].state+'	</option>');
						});
					},
					complete: function(){
						
					}	
				});
			}
			function SCode(tid){
				$('#scode').empty();
				$('#scode').append("<option>Loading....</option>");
				$.ajax({
					type: "POST",
					url: "stcode.php?tid="+tid,
					contentType:"application/json; charset=utf-8",
					dataType:"json",
					success: function(data){
						$('#scode').empty();
						
						$.each(data,function(itm){
							$('#scode').append('<option value="'+ data[itm].code +'">'+ data[itm].code+'</option>');
						});
					},
					complete: function(){
						
					}
				});
			}
			$(document).ready(function(){
				State();
				$("#stname").change(function(){
					var typeid = $("#stname").val();
					SCode(typeid);
				});
			});
			
			
		</script>
</head>
<body>
<div class="row">
	<div class="col-lg-12">
		<div class="breadcrumb">
			<li class="active">
				<i class="fa fa-dashboard"></i>
				<?php
				echo "$Department &nbsp; &nbsp; $Semester Semester"
				?>
			</li>
		</div>
		<div class="table-responsive"><!--- table-responsive Start----->
			<table class="table">
				<thead style="background-color: #04D5AC; color:white; ">
					<tr align='center'>
						<th>Day</th>
						<th>9:30 - 10:30</th>
						<th>10:30 - 11:30</th>
						<th>11:45 - 12:45</th>
						<th>12:45 - 1:45</th>
						<th>2:30 - 3:30</th>
						<th>3:30 - 4:30</th>
						<th>4:30 - 5:30</th>
					</tr>
				</thead>
				<tbody>
					<?php
						while($row=mysqli_fetch_array($result)){
							$day=$row['day'];
							$p1=$row['p1'];
							$p2=$row['p2'];
							$p3=$row['p3'];
							$p4=$row['p4'];
							$p5=$row['p5'];
							$p6=$row['p6'];
							$p7=$row['p7'];
							
							$f1=$row['f1'];
							$f2=$row['f2'];
							$f3=$row['f3'];
							$f4=$row['f4'];
							$f5=$row['f5'];
							$f6=$row['f6'];
							$f7=$row['f7'];
							
							
					?>
					<tr align='center'>
						<td style="vertical-align : middle;text-align:center;"><?php echo $day ?> </td>
						<td><?php echo $p1 ?><br><?php echo $f1 ?></td>
						<td><?php echo $p2 ?><br><?php echo $f2 ?> </td>
						<td><?php echo $p3 ?><br><?php echo $f3 ?> </td>	
						<td><?php echo $p4 ?><br><?php echo $f4 ?> </td>
						<td><?php echo $p5 ?><br><?php echo $f5 ?> </td>
						<td><?php echo $p6 ?><br><?php echo $f6 ?> </td>
						<td><?php echo $p7 ?><br><?php echo $f7 ?> </td>
					</tr>
					
					<?php 
					
					
							}
						?>
				</tbody>
			</table>
		</div><!--- table-responsive End----->
		<div><p></p></div>
		
	</div>
	<div><p></p></div>
	<div class="panel-body">
			<form class="form-horizontal" method="post" action="" enctype="multipart/form-data">
				<div class="form-group">
					<label class="col-md-3 control-label">Day :</label>
					<div class="col-md-6">
					<select id="day" name="day" class="form-control" required="" >
						<option value="MON">Monday</option>
						<option value="TUE">Tuesday</option>
						<option value="WED">Wednesday</option>
						<option value="THU">Thursday</option>
						<option value="FRI">Friday</option>
						<option value="SAT">Saturday</option>
					</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-3 control-label">Period :</label>
					<div class="col-md-6">
					<select id="period" name="period" class="form-control" required="" >
						<option value="">----- Select Period-----</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
					</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-3 control-label">Subject :</label>
					<div class="col-md-6">
					<select id="stname" name="stname" class="form-control" required>
							</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-3 control-label">Faculty :</label>
					<div class="col-md-6">
					<select id="scode" name="scode" class="form-control" required>
							</select>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-3">
					</div>
					<div class="col-md-6">
						<input type="submit" name="update" value="update" class="btn btn-primary form-control" >
					</div>
				</div>
			</form>
	</div>
</div>

<?php 
	}
 
 ?>
</body>

</html>

<?php 
if(isset($_POST['update'])){
	$day=$_POST['day'];
	$period=$_POST['period'];
	$sub=$_POST['stname'];
	$fac=$_POST['scode'];
	$p="p".$period;
	$f="f".$period;
	$query1="select sub_type from subject where sub_name='$sub' AND dept='$Department' AND sem='$Semester'";
    $result1 = mysqli_query($con, $query1);
    if(mysqli_num_rows($result1) > 0){
		while($row=mysqli_fetch_array($result1)){
			$sub_type=$row['sub_type'];
		}
	}
	if($sub_type=="L"){
		if($Department=="ECE" || $Department=="EE"){
			$x=2;
		}else{
			$x=3;
		}
		
		while($x>0){
			$update_r="update dtable set $p='$sub', $f='$fac' where day='$day' AND dept='$Department' AND sem='$Semester'";
			$run_book=mysqli_query($con,$update_r);
			if($run_book){
			$x=$x - 1;
			$period=$period + 1;
			$p="p".$period;
			$f="f".$period;
			}
			
		}
	}else{
		$update_r="update dtable set $p='$sub', $f='$fac' where day='$day' AND dept='$Department' AND sem='$Semester'";
		$run_book=mysqli_query($con,$update_r);
		
	}
	
	if($run_book){
		echo"<script>alert('Update Successfull ')</script>";
		echo"<script>window.open('Timetable.php?assign=$Department&&semester=$Semester','_self')</script>";
	}
	
}
?>

<?php 
if(isset($_POST['submit'])){
	echo"<script>window.open('index.php?Issue_Book','_self')</script>";
}
?>
<?php } ?>