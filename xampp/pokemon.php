<?php
    $username = "testuser"; 
    $password = "123";   
    $host = "localhost";
    $database= "pokemon_database";
    
    $server = mysqli_connect($host, $username, $password);
    $connection = mysqli_select_db($server, $database);

    $myquery = "SELECT * FROM  `pokemon`";
    $query = mysqli_query($server, $myquery);
    
    if ( ! $query ) {
        echo mysqli_error();
        die;
    }
    
    $data = array();
    
    for ($x = 0; $x < mysqli_num_rows($query); $x++) {
        $data[] = mysqli_fetch_assoc($query);
    }
    
    echo json_encode($data);     
     
    mysqli_close($server);
?>
