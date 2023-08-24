<?php 
//Sending direction value to database

      
include ("database.php");  // Including the database.php


if (isset($_POST)) //if statment which doesn't excute code if $_POST is is not set

{
    
$variable = implode($_POST); //Implode $_POST from array to string and save it in $variable


$sql ="INSERT INTO directionvalues (value) VALUES ('$variable')"; //Send $variable string to the database, and saving it in the directionvalues table, inside 'value' coloumn

//$sql ="SELECT * FROM directionvalues WHERE = 1";

mysqli_query ($connection, $sql); 


}
mysqli_close($connection);
?> 

