<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>

</head>
<body> <?php
include ('config.php');
?>
<form method="post" enctype="multipart/form-data"> 
Fruits:
<?php
$query=mysqli_query($conn,"select * from fruits");
$rowcount=mysqli_num_rows($query);
?>
<select name="fruits">
<option value="">Select any one</option>
<?php
for($i=1;$i<=$rowcount;$i++)
{

    $row=mysqli_fetch_array($query);
?>
    <option value="india"><?php echo $row["Name"] ?></option>
 <?php
}
?>  
</select>
</form>
</body>
</html>
 