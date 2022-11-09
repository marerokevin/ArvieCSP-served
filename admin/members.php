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

// code for getting the accounts//
$tableNameAccount="accounts";
$columnsAccounts= ['id', 'first_name','last_name','sponsorName','permission','totalIncome','pointsEarned'];
$fetchDataAccounts= fetch_data_Account($db, $tableNameAccount, $columnsAccounts);

function fetch_data_Account($db, $tableNameAccount, $columnsAccounts){

    if(empty($db)){
        $msg= "Database connection error";
    }elseif (empty($columnsAccounts) || !is_array($columnsAccounts)) {
        $msg="columns Name must be defined in an indexed array";
    }elseif(empty($tableNameAccount)) {
        $msg= "Table Name is empty";
    }else{
        $columnName = implode(", ", $columnsAccounts);
        $query = "SELECT accounts.*, totalbalance.*, rebates_points.pointsEarned FROM accounts INNER JOIN totalbalance ON accounts.member_id=totalbalance.userID INNER JOIN rebates_points ON accounts.member_id=rebates_points.user_id";
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
// end of code for getting the accounts//

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../styles/styles.css">
        <!-- <link rel="stylesheet" href="./dist/output.css"> -->
        <link rel="stylesheet" href="https://unpkg.com/flowbite@1.5.3/dist/flowbite.min.css" />
        <!-- <link rel="stylesheet" href="http://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css"> -->
        <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">
        <link href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css" rel="stylesheet">
        <title>Admin</title>
        <script src="../js/tailwind-3.1.8.js"></script>
        <script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="../node_modules/tw-elements/dist/js/index.min.js"></script>
        <!-- <script src="http://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script> -->
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
                .user-members-content-container{
                    min-height: calc(100vh - 65px);
                }
            }
            @media screen and (min-width: 1024px) {
                .user-members-content-container {
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
                .user-members-content-container{
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
        <div class="user-members-content-container pt-5 px-6 pb-5 bg-emerald-100 w-full lg:w-3/4 xl:w-4/5 2xl:w-4/5">
            
            <!--Container-->
            <div class="container w-full mx-auto px-2">

                <!--Title-->
                <h1 class="font-sans font-bold text-black px-2 lg:mb-3 text-5xl text-center ">
                    Members
                </h1>

                <!--Table-->
                <div id='recipients' class="p-8 mt-6 lg:mt-0 rounded shadow bg-white">
                    <table id="membersTable" class="stripe hover nowrap row-border dt-body-center" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
                        <thead>
                            <tr>
                                <th data-priority="1">Name</th>
                                <th data-priority="2">Role</th>
                                <th data-priority="3">Rebate Points</th>
                                <th data-priority="4">Total Earnings</th>
                                <th data-priority="5">Upline</th>
                                <th data-priority="6">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            if(is_array($fetchDataAccounts)){
                                foreach($fetchDataAccounts as $data){
                                    $first_name = $data['first_name'];
                                    $last_name = $data['last_name'];
                                    $totalIncome= $data['totalIncome'];
                                    $pointsEarned = $data['pointsEarned'];
                                    $sponsorName = $data['sponsorName'];
                                    $permission = $data['permission'];
                        ?>
                            <tr>
                                <td class="text-center"><?php echo $first_name.' '.$last_name; ?></td>
                                <td class="text-center"><?php if($permission == "userist"){echo "Member"; } else if($permission != "userist" || $permission != "administ"){ echo "Stockist";} else{echo "administ";} ?></td>
                                <td class="text-center"><?php echo $pointsEarned; ?></td>
                                <td class="text-center"><?php echo $totalIncome; ?></td>
                                <td class="text-center"><?php echo $sponsorName; ?></td>
                                <td class="text-center"><a class="mr-2 text-blue-500 text-center" href="#" data-memberId="">Edit</a><a class="ml-2 text-red-500" href="#" data-memberId="">Remove</a></td>
                            </tr>
                        <?php
                                }
                            }
                        ?>
                        </tbody>
                    </table>
                </div>
                <!--/Table-->
            </div>
            <!--/container-->

        </div>

        <script>
            $(document).ready(function(){
                $("#members").addClass("bg-emerald-700");
                $("#members").addClass("text-white");
                $("#members").removeClass("text-gray-600");

                var table = $('#membersTable').DataTable({
                    responsive: true
                })
                .columns.adjust()
                .responsive.recalc();
            });
        </script>
    </body>
</html>
