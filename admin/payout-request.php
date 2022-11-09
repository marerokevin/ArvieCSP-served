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
$tablePayout="payout_request";
$columnsTransaction= ['transaction_id','date','date_released','time_released','member_id','member_name','amount','mode_of_payment' ,'status','receipt','account_number','account_name','bank_branch'];
$fetchDataPayout= fetch_transaction($db, $tablePayout, $columnsTransaction);


function fetch_transaction($db, $tablePayout, $columnsTransaction){


 if(empty($db)){
  $msg= "Database connection error";
 }elseif (empty($columnsTransaction) || !is_array($columnsTransaction)) {
  $msg="columns Name must be defined in an indexed array";
 }elseif(empty($tablePayout)){
   $msg= "Table Name is empty";
}else{
$columnName = implode(", ", $columnsTransaction);
$query = "SELECT * FROM `payout_request` WHERE 1 ORDER BY `transaction_id` DESC";

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

    <div class="modal fade fixed top-0 left-0 hidden w-full h-full outline-none overflow-x-hidden overflow-y-auto" id="approve" tabindex="-1" aria-labelledby="exampleModalCenterTitle" aria-modal="true" role="dialog">
            <div class="modal-dialog modal-xl relative w-auto pointer-events-none">
                
                    <div class="modal-content border-none shadow-lg relative flex flex-col w-full pointer-events-auto bg-white bg-clip-padding rounded-md outline-none text-current">
                    <div class="modal-header flex flex-shrink-0 items-center justify-between p-4 border-b border-gray-200 rounded-t-md">
                        <h5 class="text-xl font-medium leading-normal text-gray-800" id="exampleModalScrollableLabel">
                        Payout Request
                        </h5>
                        <button type="button"
                        class="btn-close box-content w-4 h-4 p-1 text-black border-none rounded-none opacity-50 focus:shadow-none focus:outline-none focus:opacity-100 hover:text-black hover:opacity-75 hover:no-underline"
                        data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body relative p-4">
                    <form action="payout-request.php" method="POST">
                       <h5>Are you sure you want to approve this payout request?</h5>
                       <input type="text" name="transaction_id" id="modal_member_id"class="hidden">
                       <!-- <input type="text" name="amount" id="modal_amount" class="hidden"> -->

                    </div>
                    <div
                        class="modal-footer flex flex-shrink-0 flex-wrap items-center justify-end p-4 border-t border-gray-200 rounded-b-md">
                        <button type="button"
                        class="inline-block px-6 py-2.5 bg-gray-400 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-gray-500 hover:shadow-lg focus:bg-gray-600 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-gray-600 active:shadow-lg transition duration-150 ease-in-out"
                        data-bs-dismiss="modal">
                        Cancel
                        </button>
                        <button type="submit" name="Approve"
                        class="inline-block px-6 py-2.5 bg-blue-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out ml-1">
                        Yes
                        </button>
                    </div>
                    </div>
                </form>
            </div>
        </div>

        
    <div class="modal fade fixed top-0 left-0 hidden w-full h-full outline-none overflow-x-hidden overflow-y-auto" id="release" tabindex="-1" aria-labelledby="exampleModalCenterTitle" aria-modal="true" role="dialog">
            <div class="modal-dialog modal-xl relative w-auto pointer-events-none">
                
                    <div class="modal-content border-none shadow-lg relative flex flex-col w-full pointer-events-auto bg-white bg-clip-padding rounded-md outline-none text-current">
                    <div class="modal-header flex flex-shrink-0 items-center justify-between p-4 border-b border-gray-200 rounded-t-md">
                        <h5 class="text-xl font-medium leading-normal text-gray-800" id="exampleModalScrollableLabel">
                        Payout Request
                        </h5>
                        <button type="button"
                        class="btn-close box-content w-4 h-4 p-1 text-black border-none rounded-none opacity-50 focus:shadow-none focus:outline-none focus:opacity-100 hover:text-black hover:opacity-75 hover:no-underline"
                        data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body relative p-4">
                    <form action="release.php" method="POST"  enctype="multipart/form-data" >
     
                       <input type="text" name="member_id" id="release_member_id"class="hidden">
                       <input type="text" name="amount" id="release_amount" class="hidden">
                       <input type="text" name="transaction_id" id="release_transaction_id" class="hidden">
                       <div class="columns-3">
                        <div class="w-full">
                       
                            <div class="mb-4" >
                                <img src="../images/receipt.png"style="display:block" id="alternativeImage" class="max-w-full h-auto rounded-lg" alt="">
                                <img src=""style="display:none" id="receiptImg" class="max-w-full h-auto rounded-lg" alt="">

                            </div>
                            
                        </div>
                        <div class="col-span-2">
                        <div class="flex justify-center">
                            <div class="mb-3 w-96">
                                <label for="formFileLg" class="form-label inline-block mb-2 text-gray-700">Upload a receipt</label>
                               
                                <input name="uploadedFile"  class="form-control
                                block
                                w-full
                                px-2
                                py-1.5
                                text-xl
                                font-normal
                                text-gray-700
                                bg-white bg-clip-padding
                                border border-solid border-gray-300
                                rounded
                                transition
                                ease-in-out
                                m-0
                                focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="inputImage" type="file">
                            </div>
                            </div>
                        </div>
                    </div>
                       
<!-- Custom scripts -->
<script type="text/javascript">
  const checkbox = document.getElementById("flexCheckIndeterminate");
  checkbox.indeterminate = true;
</script>

                    </div>
                    <div
                        class="modal-footer flex flex-shrink-0 flex-wrap items-center justify-end p-4 border-t border-gray-200 rounded-b-md">
                        <button type="button"
                        class="inline-block px-6 py-2.5 bg-gray-400 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-gray-500 hover:shadow-lg focus:bg-gray-600 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-gray-600 active:shadow-lg transition duration-150 ease-in-out"
                        data-bs-dismiss="modal">
                        Cancel
                        </button>
                        <button type="submit" value="Upload" name="Release"
                        class="inline-block px-6 py-2.5 bg-blue-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out ml-1">
                        Release
                        </button>
                    </div>
                    </div>
                </form>
            </div>
        </div>



    <div class="user-code-content-container pt-5 px-6 pb-5 bg-emerald-100 w-full lg:w-3/4 xl:w-4/5 2xl:w-4/5">
        
        <!--Container-->
        <div class="container w-full mx-auto px-2">

            <!--Title-->
            <h1 class="font-sans font-bold text-black px-2 lg:mb-3 text-5xl text-center ">
                Payout Requests
            </h1>
<form action="payout-request.php" method="GET">
            <!--Table-->
            <div id='recipients' class="p-8 mt-6 lg:mt-0 rounded-lg shadow bg-white">
                <table id="payoutTable" class="stripe hover nowrap row-border dt-body-center" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
                    <thead>
                        <tr>
                            <th data-priority="1">Date</th>
                            <th data-priority="2">Tran. No.</th>
                            <th data-priority="3">Member Name</th>
                            <th data-priority="4">Amount</th>
                            <th data-priority="5">Mode</th>
                            <th data-priority="6">Status</th>
                            <th data-priority="8">Time Released</th>
                            <th data-priority="7">Action</th>
                            <th data-priority="9">Account No</th>
                            <th data-priority="10">Account Name</th>
                            <th data-priority="11">Bank Branch</th>

                        </tr>
                    </thead>
                    <tbody>
                        <!-- i Loop lang yung data dito (Hindi pa approved)-->
                        <?php           
                            if(is_array($fetchDataPayout)){      
                         
                                foreach($fetchDataPayout as $data){
                                    $transaction_id = $data['transaction_id'];
                                    $date = $data['date'];
                                    $member_id= $data['member_id'];
                                    $member_name = $data['member_name'];
                                    $amount = $data['amount'];
                                    $mode_of_payment = $data['mode_of_payment'];
                                    $status = $data['status'];
                                    $Date = $data['date_released'];
                                    $time = $data['time_released'];
                                    $receipt=$data['receipt'];
                                    $account_no=$data['account_number'];
                                    $account_name=$data['account_name'];
                                    $bank_branch=$data['bank_branch'];


                        ?>
                                                <tr>
                            <td class="text-center"><?php echo $date?></td>
                            <td class="text-center"><?php echo $transaction_id?></td>
                            <td class="text-center"><?php echo $member_name?></td>
                            <td class="text-center"><?php echo $amount?></td>
                            <td class="text-center"><?php echo $mode_of_payment?></td>
                            <td class="text-center"><?php echo $status?></td>
                            <td class="text-center"><?php echo $Date.' '.$time?></td>

                            <?php if($status =="approved") {
                                ?>
                                <td class="text-center">
                                <!-- <button type="button" disabled class="text-gray-100 bg-gray-400 focus:ring-4 font-medium rounded-lg text-base px-5 py-2.5 focus:outline-none">Approved</button> -->
                                <button type="button" onclick="passdataClaim('<?php echo $transaction_id;?>','<?php echo $amount;?>', '<?php echo $member_id;?>');"data-bs-toggle="modal" data-bs-target="#release"  class="text-white bg-yellow-500 hover:bg-orange-600 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-base px-6 py-2.5 focus:outline-none">Release</button>

                            </td>

                                <?php
                            }
                            else if ($status =="pending"){
                                ?>
                                 <td class="text-center">
                                <button type="button" onclick="passdata('<?php echo $transaction_id;?>');" data-bs-toggle="modal" data-bs-target="#approve" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-base px-6 py-2.5 focus:outline-none">Approve</button>
                            </td>
                                <?php 
                            }
                            else if($status =="released"){
                                ?>
                                 <td class="text-center">
                                <a type="button" href="<?php if($receipt==""){echo "#";}else{echo $receipt;} ?>" class="text-white bg-gray-700 hover:bg-gray-800 focus:ring-4 focus:ring-gray-300 font-medium rounded-lg text-base px-6 py-2.5 focus:outline-none">Released</a>
                            </td>
                                <?php 
                            }
                                ?>
                            <td class="text-center"><?php echo $account_no?></td>
                            <td class="text-center"><?php echo $account_name?></td>
                            <td class="text-center"><?php echo $bank_branch?></td>
                           
                        </tr>
                             <?php
                                        
                                    }}else{

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
            $("#payout").addClass("bg-emerald-700");
            $("#payout").addClass("text-white");
            $("#payout").removeClass("text-gray-600");

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
