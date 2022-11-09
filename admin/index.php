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
$db = $conn;

 //change rebates ammount

 if(isset($_POST['changeRebate'])){
    for($i=1; $i<=10; $i++){
        $rebatesA = $_POST['rebatesA'.$i];
        $rebatesB = $_POST['rebatesB'.$i];
        // echo "<script>console.log('$rebatesA'); </script>";
        // echo $rebatesA;
        // echo $rebatesB;
        $sqlUpdateRebates=  "UPDATE `rebatesamount` SET `rebatesA`='$rebatesA',`rebatesB`='$rebatesB' WHERE `id` = '$i'";
    mysqli_query($conn, $sqlUpdateRebates);
  
    }
    
    
  }




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
    <link rel="stylesheet" href="../node_modules/tw-elements/dist/css/index.min.css" />

    <title>Admin</title>
    <script src="../js/tailwind-3.1.8.js"></script>
    <script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
    <script src="../node_modules/tw-elements/dist/js/index.min.js"></script>

    <script src="../js/jquery-3.6.1.min.js"></script>
    <script src="../node_modules/tw-elements/dist/js/index.min.js"></script>
    <title>Arvie Cosmetic & Skincare  ProductsTrading</title>

    <style>
        @media screen and (max-width: 1023px) {
            .sales-dashboard{
                height: 66vh !important;
            }
        }
        @media screen and (min-width: 1024px) {
            .user-dashboard-content-container {
                width: calc(100vw - 256px);
            }
            .bottom-content{
                height: calc(100% - 184px);
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
            .sales-dashboard{
                height: calc(33% - 15px) !important;
            }
            .content-container{
                height: calc(100vh - 73px);
            }
        }
        @media screen and (min-width: 1280px) {
            .user-dashboard-content-container {
                width: calc(100vw - 288px);
            }
            .bottom-content{
                height: calc(100% - 216px);
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
        }
    </style>
</head>
<body>
  <?php include_once "./admin-header.php"; ?>
  <div class="content-container lg:flex lg:flex-row w-full">
    <div class="display-none lg:display-block lg:w-1/4 xl:w-1/5 2xl:w-1/5">
      <?php include_once "./admin-nav.php"; ?>
    </div>
    <div class="user-dashboard-content-container pt-5 px-6 pb-5 bg-emerald-100 w-full lg:w-3/4 xl:w-4/5 2xl:w-4/5">
        <!-- SALES -->
        <div class="sales-dashboard grid mb-5 rounded-lg border border-gray-200 shadow-sm lg:grid-cols-4 shadow-xl">
            <figure class="flex flex-col justify-center items-center text-center bg-white rounded-t-lg border-b border-gray-200 lg:rounded-t-none lg:rounded-tl-lg lg:border-r">
                    <h1 class="mb-2 font-medium text-2xl md:text-3xl lg:text-lg xl:text-xl 2xl:text-3xl">Total Sales</h1>
                    <p class="mt-2 font-bold text-4xl md:text-5xl lg:text-xl xl:text-2xl 2xl:text-4xl">₱ 999,999,999.00</p>
            </figure>

            <figure class="flex flex-col justify-center items-center text-center bg-white border-b border-gray-200 lg:border-r">
                    <h1 class="mb-2 font-medium text-xl md:text-2xl lg:text-lg xl:text-xl 2xl:text-2xl">Sales Today</h1>
                    <p class="mt-2 font-bold text-2xl md:text-4xl lg:text-xl xl:text-2xl 2xl:text-3xl">₱ 999,999,999.00</p>
            </figure>

            <figure class="flex flex-col justify-center items-center text-center bg-white border-b border-gray-200 lg:border-b-0 lg:border-r">
                    <h1 class="mb-2 font-medium text-xl md:text-2xl lg:text-lg xl:text-xl 2xl:text-2xl">Sales This Month</h1>
                    <p class="mt-2 font-bold text-2xl md:text-4xl lg:text-xl xl:text-2xl 2xl:text-3xl">₱ 999,999,999.00</p>
            </figure>

            <figure class="flex flex-col justify-center items-center text-center bg-white rounded-b-lg border-gray-200 lg:rounded-br-lg">
                    <h1 class="mb-2 font-medium text-xl md:text-2xl lg:text-lg xl:text-xl 2xl:text-2xl">Sales This Year</h1>
                    <p class="mt-2 font-bold text-2xl md:text-4xl lg:text-xl xl:text-2xl 2xl:text-3xl">₱ 999,999,999.00</p>
            </figure>
        </div>

        <div style="height: 66%;" class="grid grid-rows-4 lg:grid-rows-2 grid-cols-2 lg:grid-cols-4 gap-4">
            <!-- MEMBERS -->
            <div class="order-first row-span-1 col-span-2 grid mb-6 rounded-lg border border-gray-200 shadow-sm grid-cols-2 shadow-xl w-full h-full">
                <figure class="flex flex-col justify-center items-center text-center bg-white rounded-l-lg border-b border-gray-200 lg:rounded-t-none lg:rounded-tl-lg border-r">
                    <h1 class="mb-2 font-medium text-lg md:text-3xl lg:text-lg xl:text-2xl 2xl:text-3xl">Total Members</h1>
                    <p class="mt-2 font-bold text-xl md:text-5xl lg:text-xl xl:text-2xl 2xl:text-4xl">999,999</p>
                </figure>

                <figure class="flex flex-col justify-center items-center text-center bg-white border-b border-gray-200 rounded-r-lg">
                    <h1 class="mb-2 font-medium text-lg md:text-2xl lg:text-lg xl:text-2xl 2xl:text-2xl">New Members Today</h1>
                    <p class="mt-2 font-bold text-xl md:text-4xl lg:text-xl xl:text-2xl 2xl:text-3xl">999,999</p>
                </figure>
            </div>
            <!-- MEMBERS WITH MOST INVITES -->
            <div class="order-last lg:order-12 row-span-2 col-span-2 grid mb-6 rounded-lg border border-gray-200 shadow-sm lg:grid-cols-1 shadow-xl w-full h-full">
                <figure class="overflow-auto flex flex-col pt-2 md:pt-3 2xl:pt-5 text-center  bg-white rounded-lg border-b border-gray-200 lg:rounded-t-none lg:rounded-tl-lg lg:border-r">
                    <h1 class="pb-2 2xl:pb-5 font-black md:text-3xl lg:text-lg xl:text-2xl 2xl:text-5xl sticky top-0 bg-white">Top Points Earner</h1>
                    <span class="mt-2">
                        <p class="ml-5 inline-block font-medium float-left md:text-xl 2xl:text-3xl">1. JOHN ARIAN MALONDRAS</p>
                        <p class="mr-5 inline-block font-medium float-right md:text-xl 2xl:text-3xl">999</p>
                    </span>
                    <span class="mt-2">
                        <p class="ml-5 inline-block font-medium float-left md:text-xl 2xl:text-3xl">2. CEDRICK JAMES OROZO</p>
                        <p class="mr-5 inline-block font-medium float-right md:text-xl 2xl:text-3xl">999</p>
                    </span>
                    <span class="mt-2">
                        <p class="ml-5 inline-block font-medium float-left md:text-xl 2xl:text-3xl">3. KEVIN ROY MARERO</p>
                        <p class="mr-5 inline-block font-medium float-right md:text-xl 2xl:text-3xl">999</p>
                    </span>
                    <span class="mt-2">
                        <p class="ml-5 inline-block font-medium float-left md:text-xl 2xl:text-3xl">4. C.J. Orozo</p>
                        <p class="mr-5 inline-block font-medium float-right md:text-xl 2xl:text-3xl">999</p>
                    </span>
                    <span class="mt-2">
                        <p class="ml-5 inline-block font-medium float-left md:text-xl 2xl:text-3xl">5. C.J. Orozo</p>
                        <p class="mr-5 inline-block font-medium float-right md:text-xl 2xl:text-3xl">999</p>
                    </span>
                    <span class="mt-2">
                        <p class="ml-5 inline-block font-medium float-left md:text-xl 2xl:text-3xl">6. C.J. Orozo</p>
                        <p class="mr-5 inline-block font-medium float-right md:text-xl 2xl:text-3xl">999</p>
                    </span>
                    <span class="mt-2">
                        <p class="ml-5 inline-block font-medium float-left md:text-xl 2xl:text-3xl">7. C.J. Orozo</p>
                        <p class="mr-5 inline-block font-medium float-right md:text-xl 2xl:text-3xl">999</p>
                    </span>
                    <span class="mt-2">
                        <p class="ml-5 inline-block font-medium float-left md:text-xl 2xl:text-3xl">8. C.J. Orozo</p>
                        <p class="mr-5 inline-block font-medium float-right md:text-xl 2xl:text-3xl">999</p>
                    </span>
                    <span class="mt-2">
                        <p class="ml-5 inline-block font-medium float-left md:text-xl 2xl:text-3xl">9. C.J. Orozo</p>
                        <p class="mr-5 inline-block font-medium float-right md:text-xl 2xl:text-3xl">999</p>
                    </span>
                    <span class="mt-2">
                        <p class="ml-5 inline-block font-medium float-left md:text-xl 2xl:text-3xl">10. C.J. Orozo</p>
                        <p class="mr-5 inline-block font-medium float-right md:text-xl 2xl:text-3xl">999</p>
                    </span>
                </figure>
            </div>
            <!-- PAYOUT -->
            <div class="lg:order-last col-span-2 grid mb-6 rounded-lg border border-gray-200 shadow-sm grid-cols-2 shadow-xl w-full h-full">
                <figure class="flex flex-col justify-center items-center text-center bg-white rounded-l-lg border-b border-gray-200 lg:rounded-t-none lg:rounded-tl-lg border-r">
                    <h1 class="mb-2 font-medium text-lg md:text-2xl lg:text-lg xl:text-2xl 2xl:text-3xl">Total Payout</h1>
                    <p class="mt-2 font-bold text-xl md:text-4xl lg:text-xl xl:text-2xl 2xl:text-4xl">₱ 999,999,999.00</p>
                </figure>

                <figure class="flex flex-col justify-center items-center text-center bg-white border-b border-gray-200 rounded-r-lg">
                    <h1 class="mb-2 font-medium text-lg md:text-xl lg:text-lg xl:text-2xl 2xl:text-2xl">Payout This Month</h1>
                    <p class="mt-2 font-bold text-xl md:text-3xl lg:text-xl xl:text-2xl 2xl:text-3xl">₱ 999,999,999.00</p>
                </figure>
            </div>

        </div>
    </div>


<?php include "./editRebates.php"?>;




    <script>
        $(document).ready(function(){
            $("#dashboard").addClass("bg-emerald-700");
            $("#dashboard").addClass("text-white");
            $("#dashboard").removeClass("text-gray-600");
        });
    </script>
</body>
</html>
