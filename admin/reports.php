<?php
session_start();
include_once ("../includes/config/conn.php");

if(!isset( $_SESSION['loggedin'])){
    header("location:../login.php");
  }else{
    if($_SESSION['permission']=='userist'){
    header("location:../user/index.php");

    }
  }
  
$db= $conn;


// code for getting the payout transaction//
$pointsReport="points_report";
$columnsReport= ['points_report_id','member_id','date','time',',month','year','points_earned','unclaimable'];
$fetchDataReport= fetch_report($db, $pointsReport, $columnsReport);


function fetch_report($db, $pointsReport, $columnsReport){


 if(empty($db)){
  $msg= "Database connection error";
 }elseif (empty($columnsReport) || !is_array($columnsReport)) {
  $msg="columns Name must be defined in an indexed array";
 }elseif(empty($pointsReport)){
   $msg= "Table Name is empty";
}else{
$columnName = implode(", ", $columnsReport);
$query = "SELECT * FROM `points_report` WHERE 1 ORDER BY `points_report_id` DESC";

//  SELECT * FROM `usertask` WHERE `username` = 'cjorozo';
$result = $db->query($query);
if($result== true){ 
 if ($result->num_rows > 0) {
    $row= mysqli_fetch_all($result, MYSQLI_ASSOC);
    $msg= $row;
 } else {
    $msg= "No Data Found"; 
 }
}else{
  $msg= mysqli_error($db);
}
}
return $msg;
}
// end of code for getting the payout transaction//



if(isset($_POST['Approve'])){
$transaction_id= $_POST['transaction_id'];
$sqlupdatesPOStatus= "UPDATE `payout_request` SET `status`='approved' WHERE `transaction_id` = '$transaction_id'";
$updateStatus = mysqli_query($conn, $sqlupdatesPOStatus);
if($updateStatus){
echo "<script> alert('You have successfully approved the request.')</script>";
}
else{
echo "<script> alert('Approval of request did not succeed.')</script>";

}


}






// Array ng ID Number at Name
$idNum = array("123123123", "456456456", "789789789");
$memName = array("John Arian Malondras", "Kevin Roy Marero", "Cedrick James Orozo");

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/styles.css">
    <!-- <link rel="stylesheet" href="./dist/output.css"> -->
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css" rel="stylesheet">




    <link rel="stylesheet" href="https://unpkg.com/flowbite@1.5.3/dist/flowbite.min.css" />
    <link rel="stylesheet" href="../node_modules/tw-elements/dist/css/index.min.css" />

    <title>Arvie Direct Sales</title>
    <script src="../js/tailwind-3.1.8.js"></script>
    <script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

    <script src="../node_modules/tw-elements/dist/js/index.min.js"></script>
    <script src="../js/jquery-3.6.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>

    <title>Arvie Cosmetic & Skincare  ProductsTrading</title>

    <style>
		.dataTables_wrapper select,
		.dataTables_wrapper .dataTables_filter input {
			color: #4a5568;
			padding-left: 1rem;
			padding-right: 1rem;
			padding-top: .5rem;
			padding-bottom: .5rem;
			line-height: 1.25;
			border-width: 1px;
			border-radius: .25rem;
			border-color: #A1A1AA;
			background-color: #edf2f7;
		}

		table.dataTable.hover tbody tr:hover,
		table.dataTable.display tbody tr:hover {
			background-color: #ebf4ff;
		}

		.dataTables_wrapper .dataTables_paginate .paginate_button {
			font-weight: 700;
			border-radius: .25rem;
			border: 1px solid transparent;
		}

		.dataTables_wrapper .dataTables_paginate .paginate_button.current {
			color: #fff !important;
			box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0 rgba(0, 0, 0, .06);
			font-weight: 700;
			border-radius: .25rem;
			background: #667eea !important;
			border: 1px solid transparent;
		}

		.dataTables_wrapper .dataTables_paginate .paginate_button:hover {
			color: #fff !important;
			box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0 rgba(0, 0, 0, .06);
			font-weight: 700;
			border-radius: .25rem;
			background: #667eea !important;
			border: 1px solid transparent;
		}

		table.dataTable.no-footer {
			border-bottom: 1px solid #e2e8f0;
			margin-top: 0.75em;
			margin-bottom: 0.75em;
		}

		table.dataTable.dtr-inline.collapsed>tbody>tr>td:first-child:before,
		table.dataTable.dtr-inline.collapsed>tbody>tr>th:first-child:before {
			background-color: #667eea !important;
		}
        .dataTables_length label select{
            border: 1px solid #A1A1AA;
            padding-left: 20px;
            padding-right: 20px;
        }


        @media screen and (max-width: 1023px) {
            .user-code-content-container{
                min-height: calc(100vh - 65px);
            }
        }
        @media screen and (min-width: 1024px) {
            .user-code-content-container {
                width: calc(100vw - 256px);
            }
            .navbar div .nav-items ul li {
                position: relative;
                padding: 0 25px;
                margin-left: 0 !important;
            }
            .navbar div .nav-items ul li:not(:last-child):after {
                position: absolute;
                right: 0;
                top: 50%;
                transform: translateY(-50%);
                content: "";
                width: 1px;
                height: 10px;
                background-color: #374151;
            }
            .content-container{
                min-height: calc(100vh - 73px);
            }
        }
        @media screen and (min-width: 1280px) {
            .user-code-content-container{
                padding: 0 25px;
                margin-left: 0 !important;
            }
            .navbar div .nav-items ul li:not(:last-child):after {
                position: absolute;
                right: 0;
                top: 50%;
                transform: translateY(-50%);
                content: "";
                width: 1px;
                height: 10px;
                background-color: #374151;
            }
        }
    </style>
</head>
<body>
  <?php include_once "./admin-header.php"; ?>
  <div class="content-container lg:flex lg:flex-row w-full">
    <div class="display-none lg:display-block lg:w-1/4 xl:w-1/5 2xl:w-1/5">
      <?php include_once "./admin-nav.php"; ?>
    </div>

   

      



    <div class="user-code-content-container pt-5 px-6 pb-5 bg-emerald-100 w-full lg:w-3/4 xl:w-4/5 2xl:w-4/5">
        
        <!--Container-->
        <div class="container w-full mx-auto px-2">

            <!--Title-->
            <h1 class="font-sans font-bold text-black px-2 lg:mb-3 text-5xl text-center ">
               Reports
            </h1>
<form action="payout-request.php" method="GET">
            <!--Table-->
            <div id='recipients' class="p-8 mt-6 lg:mt-0 rounded-lg shadow bg-white">
                <table id="payoutTable" class="stripe hover nowrap row-border dt-body-center" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
                    <thead>
                        <tr>
                            <th data-priority="1">No</th>
                            <th data-priority="2">Name</th>
                            <th data-priority="5">Date</th>
                            <th data-priority="6">Time</th>
                            <th data-priority="7">Month</th>
                            <th data-priority="8">Year</th>
                            <th data-priority="3">Points Earned</th>
                            <th data-priority="4">Unclaimable Balance</th>



                        </tr>
                    </thead>
                    <tbody>
                        <!-- i Loop lang yung data dito (Hindi pa approved)-->
                        <?php           
                        $no=1;
                            if(is_array($fetchDataReport)){      
                         
                                foreach($fetchDataReport as $data){
                                    $member_id = $data['member_id'];
                                    $date = $data['date'];
                                    $time= $data['time'];
                                    $month = $data['month'];
                                    $year = $data['year'];
                                    $points_earned = $data['points_earned'];
                                    $unclaimable = $data['unclaimable'];

                                    $SelectInfo ="SELECT * FROM `accounts` WHERE `member_id` = '$member_id';";
                                    $resultInfo= mysqli_query($conn, $SelectInfo);
                                    $fname="";
                                    $lname="";
                             
                                    while($userRow = mysqli_fetch_assoc($resultInfo)){
                                        $fname = $userRow['first_name'];
                                        $lname = $userRow['last_name'];
                                
                                    
                                    }
                                    

                        ?>
                                                <tr>
                            <td class="text-center"><?php echo $no?></td>
                            <td class="text-center"><?php echo $fname.' '.$lname?></td>
                            <td class="text-center"><?php echo $date?></td>
                            <td class="text-center"><?php echo $time?></td>
                            <td class="text-center"><?php echo $month?></td>
                            <td class="text-center"><?php echo $year?></td>
                            <td class="text-center"><?php echo $points_earned?></td>
                            <td class="text-center"><?php echo $unclaimable?></td>


             
                        </tr>
                             <?php
                                        
                                        $no++; }
                                }else{

                                        }
                        ?>
               <!-- <td class="text-center">
                                <button type="button" disabled class="text-gray-100 bg-gray-400 focus:ring-4 font-medium rounded-lg text-base px-5 py-2.5 focus:outline-none">Approved</button>
                            </td> -->
                        <!-- end -->
                    </tbody>
                </table>
            </div>
                                    </form>
            <!--/Table-->
        </div>
        <!--/container-->

    </div>
    </div>
    <?php include "./editRebates.php"?>;
    <script>
        $(document).ready(function(){
            $("#reports").addClass("bg-emerald-700");
            $("#reports").addClass("text-white");
            $("#reports").removeClass("text-gray-600");

            var table = $('#payoutTable').DataTable({
                responsive: true
            })
            .columns.adjust()
            .responsive.recalc();
        });

        function passdata(id){
            document.getElementById('modal_member_id').value=id;
        }
        function passdataClaim(transactionId, amount, memberId){
            document.getElementById('release_member_id').value=memberId;
            document.getElementById('release_amount').value=amount;
            document.getElementById('release_transaction_id').value=transactionId;

        }


        var validImagetypes=["image/gif", "image/jpeg", "image/png"];
function previewImage(image_blog){
  document.getElementById("alternativeImage").style.display="none";
  // document.getElementById("cardImage").display=null;
  $("#receiptImg").fadeIn();

  
    if(image_blog.files && image_blog.files[0])
    {
     var reader=new FileReader();
     var pictureeme =  $("#inputImage").prop("files")[0];
       reader.onload=function(e)
       {
         $("#receiptImg").attr('src', e.target.result);
        //  $("#cardImage").fadeIn();
         if($.inArray(pictureeme["type"], validImagetypes)<0)
         {
          $("#inputImage").addClass("is-invalid")
          return;
         }
         else{
           $("#inputImage").removeClass("is-invalid");
         }
       }
       reader.readAsDataURL(image_blog.files[0]);
   
    }
   }
   $("#inputImage").change(function(){
     previewImage(this);
   });
    </script>

</body>
</html>
