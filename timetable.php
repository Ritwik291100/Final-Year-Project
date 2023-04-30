<!DOCTYPE html>
<html>
<head>
<title>Timetable</title>
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function() {
  $('select[name^="timetable["]').on('change', 'select[name$="[subject]"]', function() {
    var subject_id = $(this).val();
    var teacher_select = $(this).closest('td').find('select[name$="[teacher]"]');
    teacher_select.empty();
    if (subject_id) {
      $.ajax({
        url: 'get_teachers.php',
        data: { subject_id: subject_id },
        dataType: 'json',
        success: function(data) {
          $.each(data, function(index, teacher_name) {
            teacher_select.append($('<option>', {
              value: teacher_name,
              text: teacher_name
            }));
          });
        }
      });
    }
  });
});
</script>

</head>
<body>

<h1>Timetable</h1>
<form method="POST">
<table border="1">
<tr>
<th>Day/Time</th>
<th>9:30-10:30</th>
<th>10:30-11:30</th>
<th>11:45-12:45</th>
<th>12:45-1:45</th>
<th>2:30-3:30</th>
<th>3:30-4:30</th>
<th>4:30-5:30</th>
</tr>
<?php
// Establish a database connection
$db_host = "localhost";
$db_user = "root";
$db_password = "";
$db_name = "doit";
$conn = mysqli_connect($db_host, $db_user, $db_password, $db_name);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// SQL query to retrieve subjects from the database
$subject_query = "SELECT subject_name FROM subjects";
$subject_result = mysqli_query($conn, $subject_query);

// SQL query to retrieve teachers from the database
$teacher_query = "SELECT teacher_name FROM teachers";
$teacher_result = mysqli_query($conn, $teacher_query);

$days = array('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday');
$timeslots = array('9:30-10:30', '10:30-11:30', '11:45-12:45', '12:45-1:45', '2:30-3:30', '3:30-4:30', '4:30-5:30');
$timetable = array();

foreach ($days as $day) {
	echo "<tr><td>$day</td>";
	foreach ($timeslots as $timeslot) {
	  echo "<td>";
	  // Create dropdown for subject
	  echo "<select name='timetable[$day][$timeslot][subject]'>";
	  echo "<option value='' disabled selected>SELECT SUBJECT</option>";
	  mysqli_data_seek($subject_result, 0); // reset the pointer to the beginning of the result set
	  while ($row = mysqli_fetch_assoc($subject_result)) {
		$subject_name = $row['subject_name'];
		echo "<option value='$subject_name'>$subject_name</option>";
	  }
	  echo "</select>";
  
	  // Create dropdown for teacher
	  echo "<select name='timetable[$day][$timeslot][teacher]'>";
	  echo "<option value='' disabled selected>SELECT TEACHER</option>";
	  mysqli_data_seek($teacher_result, 0); // reset the pointer to the beginning of the result set
	  while ($row = mysqli_fetch_assoc($teacher_result)) {
		$teacher_name = $row['teacher_name'];
		echo "<option value='$teacher_name'>$teacher_name</option>";
	  }
  echo "</select>";
	  echo "</td>";
	}
	echo "</tr>";
  }
// Close the database connection
mysqli_close($conn);
?>
</table>
<input type="submit" value="Save Timetable">
</form>
</body>
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->
</html>