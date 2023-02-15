<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<?php session_start(); ?>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Add Creditors</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="../CSS/jquery-ui.css">
		<script src="../JS/jquery-1.10.2.js"></script>
		<script src="../JS/jquery-ui.js"></script>
		<script src="../JS/myScript.js"></script>
        <script type="text/JavaScript">
			function State(){
				$('#stname').empty();
				$('#stname').append("<option>Loading....</option>");
				$('#iname').append("<option value=''>--Select Item--</option>");
				$.ajax({
					type:"POST",
					url:"statelist.php",
					contentType:"application/json; charset=utf-8",
					dataType:"json",
					success: function(data){
						$('#stname').empty();
						$('#stname').append("<option value=''>-- Select State --</option>");
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
						$('#scode').append("<option value=''>-- Select Code --</option>");
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
        <?php 
		if(isset($_SESSION['username']) && $_SESSION['Logstat'] == 1) {
			require '../Variables/variables.php';
			require 'InitializeUser.php';
			require 'usertables.php';
			
			// Create connection
			$conn = new mysqli($servername, $username, $password, $dbname);
			
			// Check connection
			if ($conn->connect_error) {
				die("Connection failed: " . $conn->connect_error);
			}
		?>
        <div id="container">
            <?php include 'header.php';?>
			
            <div id="mainbody" style="height:<?php echo $HEIGHT;?>">
				</br>
				<center><table id="table_head">
					<tr>
						<td><h3><?php echo $adwhol; ?></h3></td>
					</tr>
				</table></center>
				</br></br>
				<form action="dataprocess.php" method="post">
                <?php
					// Create connection
					$conn = new mysqli($servername, $username, $password, $dbname);
					
					// Check connection
					if ($conn->connect_error) {
						die("Connection failed: " . $conn->connect_error);
					}
				
					$sql = "SELECT s_name,s_code FROM $table7 ORDER BY s_name";
					$result = $conn->query($sql);
				?>
				<center>
                <table id="table_dis" width="90%">
					<tr>
						<td style="text-align: left; width: 20%; background-color: #DFDFDF; font-weight: bold;">
							<?php echo "Creditors ".$nm;?>
						</td>
						<td style="text-align: left; width: 30%">
							<input type="text" id="name" name="name" onblur="this.value=this.value.toUpperCase()" required/>
						</td>
						<td style="text-align: left; width: 20%; background-color: #DFDFDF; font-weight: bold;">
							<?php echo $addr;?>
						</td>
						<td style="text-align: left; width: 30%">
							<input type="text" id="address" name="address" onblur="this.value=this.value.toUpperCase()" required/>
						</td>
					</tr>
                    <tr>
						<td style="text-align: left; width: 20%; background-color: #DFDFDF; font-weight: bold;">
							<?php echo $st;?>
						</td>
						<td style="text-align: left; width: 30%">							
							<select id="stname" name="stname" required>
							</select>
						</td>
						<td style="text-align: left; width: 20%; background-color: #DFDFDF; font-weight: bold;">
							<?php echo $stcd;?>
						</td>
						<td style="text-align: left; width: 30%">
							<select id="scode" name="scode" required>
							</select>
						</td>
					</tr>
                    <tr>
						<td style="text-align: left; width: 20%; background-color: #DFDFDF; font-weight: bold;">
							<?php echo $gstin;?>
						</td>
						<td style="text-align: left; width: 30%">
							<input type="text" id="gstin" name="gstin" onblur="this.value=this.value.toUpperCase()" required/>
						</td>
						<td style="text-align: left; width: 20%; background-color: #DFDFDF; font-weight: bold;">
							<?php echo $pan;?>
						</td>
						<td style="text-align: left; width: 30%">
							<input type="text" id="pan" name="pan" onblur="this.value=this.value.toUpperCase()" required/>
						</td>
					</tr>
                    <tr>
						<td style="text-align: left; width: 20%; background-color: #DFDFDF; font-weight: bold;">
							<?php echo $cntct;?>
						</td>
						<td style="text-align: left; width: 30%">
							<input type="text" id="contact" name="contact"  required/>
						</td>
						<td style="text-align: left; width: 20%; background-color: #DFDFDF; font-weight: bold;">
							<?php echo $eml;?>
						</td>
						<td style="text-align: left; width: 30%">
							<input type="text" id="vtc" name="vtc" >
						</td>
					</tr>
					<tr>
						<td style="text-align: left; width: 20%; background-color: #DFDFDF; font-weight: bold;">
							<?php echo $bnkn;?>
						</td>
						<td style="text-align: left; width: 30%">
							<input type="text" id="nbnk" name="nbnk" onblur="this.value=this.value.toUpperCase()" required/>
						</td>
						<td style="text-align: left; width: 20%; background-color: #DFDFDF; font-weight: bold;">
							<?php echo $acn;?>
						</td>
						<td style="text-align: left; width: 30%">
							<input type="text" id="account" name="account" onblur="this.value=this.value.toUpperCase()" required/>
						</td>
					</tr>
					<tr>
						<td style="text-align: left; width: 20%; background-color: #DFDFDF; font-weight: bold;">
							<?php echo $ifsc;?>
						</td>
						<td style="text-align: left; width: 30%">
							<input type="text" id="ifsc1" name="ifsc1" onblur="this.value=this.value.toUpperCase()" >
						</td>
						<td style="text-align: left; width: 20%; background-color: #DFDFDF; font-weight: bold;">
							<?php echo $brnm;?>
						</td>
						<td style="text-align: left; width: 30%">
							<input type="text" id="brn" name="brn" onblur="this.value=this.value.toUpperCase()" >
						</td>
					</tr>
				</table>
                </center>
                <p><h4 style="padding: 20px 0 0 60px; text-align: left; color: red;"><?php echo $note; ?></h4></p>
                <br/><br/>
                <center><table>
					<tr>
						<td>
                            <input type="hidden" name="pagetype" value="W"/>
							<input type="submit" name="wholesaler" value="Add" style="width: 70px;"/>
                        </td>
					</tr>
				</table></center>
				</form>
            </div>
            <div id="footer">
                <div id="footer1"><?php echo $com; ?></div>
				<div id="footer2"><?php echo $copyright; ?></div>
            </div>            
        </div>
		<?php } else {
			header('Location: ../login.php');
		}?>
	</body>

</html>
