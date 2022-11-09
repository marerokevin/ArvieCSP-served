<?php 

session_start();
include_once ("/var/www/html/ArvieCSP/includes/config/conn.php");
if(!isset( $_SESSION['loggedin'])){
  header("location:../login.php");
}else{
  if($_SESSION['permission']=='userist'){
  header("location:../user/index.php");

  }
}
$db= $conn;

date_default_timezone_set("Asia/Singapore");
$dateNow = new DateTime(); 
$DateToday  = $dateNow->format('Y-m-d'); 
$timenow = date("h:i a");  
$message = ''; 
if (isset($_POST['Release']) && $_POST['Release'] == 'Upload')
{
  if (isset($_FILES['uploadedFile']) && $_FILES['uploadedFile']['error'] === UPLOAD_ERR_OK)
  {
    // get details of the uploaded file
    $fileTmpPath = $_FILES['uploadedFile']['tmp_name'];
    $fileName = $_FILES['uploadedFile']['name'];
    $fileSize = $_FILES['uploadedFile']['size'];
    $fileType = $_FILES['uploadedFile']['type'];
    $fileNameCmps = explode(".", $fileName);
    $fileExtension = strtolower(end($fileNameCmps));

    // sanitize file-name
    $newFileName = md5(time() . $fileName) . '.' . $fileExtension;

    // check if file has one of the following extensions
    $allowedfileExtensions = array('jpg','jpeg', 'gif', 'png', 'zip', 'txt', 'xls', 'doc');

    if (in_array($fileExtension, $allowedfileExtensions))
    {
      // directory in which the uploaded file will be moved
      $uploadFileDir = '/var/www/html/ArvieCSP/images/'; //eto yun diba?
      $dest_path = $uploadFileDir . $newFileName;

      if(move_uploaded_file($fileTmpPath, $dest_path)) 
      {
        $message ='File is successfully uploaded.';
      }
      else 
      {
        $message = 'There was some error moving the file to upload directory. Please make sure the upload directory is writable by web server.';
      }
    }
    else
    {
      $message = 'Upload failed. Allowed file types: ' . implode(',', $allowedfileExtensions);
    }
  }
  else
  {
    $message = 'There is some error in the file upload. Please check the following error.<br>';
    $message .= 'Error:' . $_FILES['uploadedFile']['error'];
  }

  $destinationPath=$dest_path;

  $transaction_id= $_POST['transaction_id'];
  $member_id= $_POST['member_id'];
  $amount= $_POST['amount'];

  $sqlupdatesPOStatus= "UPDATE `payout_request` SET `status`='released',`receipt`='$destinationPath', `date_released`='$DateToday', `time_released`='$timenow' WHERE `transaction_id` = '$transaction_id'";
  $updateStatus = mysqli_query($conn, $sqlupdatesPOStatus);
  if($updateStatus){
      $sqlGetTotalBalance= "SELECT * FROM `totalbalance` WHERE `userID` = '$member_id'";
      $resultTotalBalance = mysqli_query($conn, $sqlGetTotalBalance);
      
      $totalBalance = 0;
      $totalIncome = 0;
      while($userRow = mysqli_fetch_assoc($resultTotalBalance)){
          $totalBalance = $userRow['totalBalance'];
          $totalIncome = $userRow['totalIncome'];

      }
      $updatedBalance = $totalBalance - $amount;
      $updatedTotalIncome = $totalIncome + $amount;
      $sqlAddBalance= "UPDATE `totalbalance` SET `totalBalance`='$updatedBalance', `totalIncome` = '$updatedTotalIncome' WHERE `userID` = '$member_id'";
      mysqli_query($conn, $sqlAddBalance);
  
      $code = "TR";
      $get_month = date('m', strtotime("now"));
  
      $sqlLastID = "SELECT MAX(transactionIdBasis) as 'idnumber' FROM `transaction` WHERE 1";//select the highest number_basis
      $getLastId = mysqli_query($conn, $sqlLastID);
      while($userRow = mysqli_fetch_assoc($getLastId)){
          $lastId = $userRow['idnumber'];
          $lastId++; //increment the number_basis
      }

      
      $getDateNow = new DateTime();
      $getYearNow  = $getDateNow->format('Y'); 
      $getMonthNow  = $getDateNow->format('m'); 
      $getDateNow  = $getDateNow->format('d'); 
      $getDateNowReal = new DateTime();
      $FullDateOfthisDay = $getDateNowReal->format('Y-m-d'); 
      $timenow = date("h:i a"); 

      $transactionId = $code."-".$getYearNow."".$getDateNow."".$getMonthNow."".$lastId;


      $sqlinsertTransact= "INSERT INTO `transaction`(`transaction2ndId`,`Date`,`time`,`type`,`userId`, `addedAmount`, `TotalBalance`,`transactionIdBasis`) VALUES ('$transactionId','$DateToday','$timenow','Withdrawal','$member_id','$amount','$updatedBalance','$lastId')";
      mysqli_query($conn, $sqlinsertTransact);
      
  echo "<script> alert('You have successfully approved the request.')</script>";
  header("Location: payout-request.php");

  }
  else{
  echo "<script> alert('Approval of request did not succeed.')</script>";
  
  }
  
}

?>