<?php

    //Declaring variable
     $db_server = "localhost"; //database server host name
     $db_user = "root";        //databse user name
     $db_password = "";        //database password
     $db_name = "directiondb"; //database name
     $connection = "";         // connection variable
    


     //Check if connected to database or not, and display message accordingly 
    try {
        $connection = mysqli_connect($db_server,
                                     $db_user,
                                     $db_password,
                                     $db_name); // This is an object
         }
 
         
                catch(mysqli_sql_exception)
                {
                    echo "Could not connect <br>";
                }

     if($connection)
    {
        echo "You are Conneceted";
    }
     

      
    
                    


?>