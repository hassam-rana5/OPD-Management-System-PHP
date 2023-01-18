<?php
$mysqli = new mysqli("localhost","root","","doctorp");

if ($mysqli)
{
    echo"Database connected";
}	
else{
    echo"Database not connected";

}

?>