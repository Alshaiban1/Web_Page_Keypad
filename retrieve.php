<?php 
include ("database.php"); //include database
$sqlselect = "SELECT * FROM directionvalues ORDER BY data_id DESC LIMIT 1"; //save variable to retrieve latest data from the database (Limit shown is 1)
$directions = mysqli_query($connection, $sqlselect); //to store the object returned from mysqli_query function in variable $directions
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Retrieved Data</title>
    <link rel="stylesheet" href="style.css">

</head>
<body>

    <?php
    if (mysqli_num_rows($directions) > 0) //check if atleast one data exists
    { 
    ?>

<table>
       <tr>
        
       </tr>

            <?php
            $i=0;
            while($row = mysqli_fetch_array($directions))
            {
            ?>

        <tr>
        <td><?php echo $row["value"];echo "&nbsp;";echo $row["input_time"];?></td> <!-- Display direction value and time-->
        </tr>

            <?php
            $i++;
            }
            ?>
</table>
    <?php
    }
    else
    {
    echo "No data found";
    }
    ?>
        
</body>
</html>
