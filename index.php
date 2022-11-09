<?php
    // include "./includes/auth/session.php";
    session_start();
    include_once ("./includes/config/conn.php");
    $db= $conn;
    date_default_timezone_set("Asia/Singapore");
    $date = new DateTime(); 
    $completeDateNow  = $date->format('M d, Y');  
    $day  = $date->format('D'); 
    $timenow = date("h:i a"); 
    // $sqlinsertTransact2= "INSERT INTO `points_report`( `member_id`, `date`, `time`, `month`, `year`, `points_earned`) VALUES ('1234','11-04-2022','$timenow','Nov','2022','10')";
    // mysqli_query($conn, $sqlinsertTransact2);
    // if($timenow=="07:00 am"){
    //   $sqlinsertTransact2= "INSERT INTO `points_report`( `member_id`, `date`, `time`, `month`, `year`, `points_earned`) VALUES ('1234','11-04-2022','$timenow','Nov','2022','10'))";
    //   mysqli_query($conn, $sqlinsertTransact2);
    // }


    header("login.php");
    if(!isset( $_SESSION['loggedin'])){
        header("location:./login.php");
      }else{
        if($_SESSION['permission']=='administ'){
        header("location:./admin/index.php");
    
        }
      }
      if(isset( $_SESSION['loggedin'])){
        if($_SESSION['permission']=='administ'){
        header("location:./admin/index.php");
    
        }else{
            header("location: ./user/index.php");

        }
    
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styles/styles.css">
    <!-- <link rel="stylesheet" href="./dist/output.css"> -->
    <link rel="stylesheet" href="https://unpkg.com/flowbite@1.5.3/dist/flowbite.min.css" />
    <title>Arvie Direct Sales</title>
    <script src="./js/tailwind-3.1.8.js"></script>
    <script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
    <script src="./js/jquery-3.6.1.min.js"></script>
</head>
<body>
    <?php include_once "./header.php"; echo $admin; ?>
    
    
</body>
</html>