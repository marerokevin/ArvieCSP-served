<?php

session_start(); 
include_once ("../includes/config/conn.php");
$db= $conn;
date_default_timezone_set("Asia/Singapore");
$date = new DateTime(); 
$completeDateNow  = $date->format('Y-m-d');  
$month  = $date->format('M');  
$year  = $date->format('Y');

$day  = $date->format('d'); 
$timenow = date("h:i a"); 

if($day == '7'){
$sqlPoints= "SELECT * FROM `rebates_points` WHERE 1";
$resultPoints = mysqli_query($conn, $sqlPoints);

while($userRow = mysqli_fetch_assoc($resultPoints)){
    $user_id = $userRow['user_id'];
    $email = $userRow['email_address'];
    $pointsEarned = $userRow['pointsEarned'];

    $sqlUnclaimable= "SELECT * FROM `totalbalance` WHERE `userID` = '$user_id' ";
$resultUnclaimable= mysqli_query($conn, $sqlUnclaimable); 

$unclaimable=0;
while($userRow = mysqli_fetch_assoc($resultUnclaimable)){
    $unclaimable = $userRow['unclaimable'];
}
    $sqlinsertpointsReport= "INSERT INTO `points_report`( `member_id`, `date`, `time`, `month`, `year`, `points_earned`,`unclaimable`) VALUES ('$user_id','$completeDateNow','$timenow','$month','$year','$pointsEarned','$unclaimable')";
mysqli_query($conn, $sqlinsertpointsReport);

}


    $sqlreset= "UPDATE `rebates_points` SET `pointsEarned`='0' WHERE 1";
mysqli_query($conn, $sqlreset);

$sqlresetunclaimable= "UPDATE `totalbalance` SET `unclaimable`='0' WHERE 1";
mysqli_query($conn, $sqlresetunclaimable);

}

 ?>
 