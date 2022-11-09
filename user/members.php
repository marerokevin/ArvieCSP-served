<?php
session_start();

include_once ("../includes/config/conn.php");
$db= $conn;
date_default_timezone_set("Asia/Singapore");
$dateNow = new DateTime(); 
$dateNow  = $dateNow->format('M d, Y'); 

$member_id = $_SESSION["member_id"];
$email = $_SESSION["email_address"];
$id = $_SESSION["id"];
$SelectInfo ="SELECT * FROM `accounts` WHERE `member_id` = '$member_id';";
$resultInfo= mysqli_query($conn, $SelectInfo);
$fname="";
$lname="";
$sponsorrr="";
while($userRow = mysqli_fetch_assoc($resultInfo)){
    $fname = $userRow['first_name'];
    $lname = $userRow['last_name'];
    $sponsorrr = $userRow['sponsorName'];

}

$email = $_SESSION["email_address"];


// array of dowlines

$level1 = array();
$level1Name = array();

$level2 = array();
$level2Name = array();

$level3 = array();
$level3Name = array();

$level4 = array();
$level4Name = array();

$level5 = array();
$level5Name = array();

$level6 = array();
$level6Name = array();

$level7 = array();
$level7Name = array();

$level8 = array();
$level8Name = array();

$level9 = array();
$level9Name = array();

$level10 = array();
$level10Name = array();



//codes for getting the downlines
//level 1

$selectLevel1= "SELECT * FROM `accounts` WHERE `sponsor` = '$member_id '";
$resultselectLevel1= mysqli_query($conn, $selectLevel1);
while($userRow = mysqli_fetch_assoc($resultselectLevel1)){
    $name = $userRow['first_name'].' '.$userRow['last_name'];
    // echo " <div>$name</div>";
    array_push($level1Name, $name);
    $idinvite = $userRow['member_id'];
    array_push($level1,$idinvite);
    // print ($level1[0]);
}
//level 2
$count = count($level1);
for($i=0; $i<=$count-1; $i++){
    $selectLevel2= "SELECT * FROM `accounts` WHERE `sponsor` = '$level1[$i]'";
    $resultselectLevel2= mysqli_query($conn, $selectLevel2);
    while($userRow = mysqli_fetch_assoc($resultselectLevel2)){
        $name2 = $userRow['first_name'].' '.$userRow['last_name'];
        array_push($level2Name, $name2);
        $idinvite = $userRow['member_id'];
        array_push($level2,$idinvite);
    }
    }
//level 3
$count = count($level2);
    for($i=0; $i<=$count-1; $i++){
        $selectLevel3= "SELECT * FROM `accounts` WHERE `sponsor` = '$level2[$i]'";
        $resultselectLevel3= mysqli_query($conn, $selectLevel3);
        while($userRow = mysqli_fetch_assoc($resultselectLevel3)){
            $name3 = $userRow['first_name'].' '.$userRow['last_name'];
            array_push($level3Name, $name3);
            $idinvite = $userRow['member_id'];
            array_push($level3,$idinvite);
        }
        }

//level 4
$count = count($level3);
    for($i=0; $i<=$count-1; $i++){
        $selectLevel4= "SELECT * FROM `accounts` WHERE `sponsor` = '$level3[$i]'";
        $resultselectLevel4= mysqli_query($conn, $selectLevel4);
        while($userRow = mysqli_fetch_assoc($resultselectLevel4)){
            $name4 = $userRow['first_name'].' '.$userRow['last_name'];
            array_push($level4Name, $name4);
            $idinvite = $userRow['member_id'];
            array_push($level4,$idinvite);
        }
        }

        
//level 5
$count = count($level4);
for($i=0; $i<=$count-1; $i++){
    $selectLevel5= "SELECT * FROM `accounts` WHERE `sponsor` = '$level4[$i]'";
    $resultselectLevel5= mysqli_query($conn, $selectLevel5);
    while($userRow = mysqli_fetch_assoc($resultselectLevel5)){
        $name5 = $userRow['first_name'].' '.$userRow['last_name'];
        array_push($level5Name, $name5);
        $idinvite = $userRow['member_id'];
        array_push($level5,$idinvite);
    }
    }

    //level 6
$count = count($level5);
for($i=0; $i<=$count-1; $i++){
    $selectLevel6= "SELECT * FROM `accounts` WHERE `sponsor` = '$level5[$i]'";
    $resultselectLevel6= mysqli_query($conn, $selectLevel6);
    while($userRow = mysqli_fetch_assoc($resultselectLevel6)){
        $name6 = $userRow['first_name'].' '.$userRow['last_name'];
        array_push($level6Name, $name6);
        $idinvite = $userRow['member_id'];
        array_push($level6,$idinvite);
    }
    }
    
    //level 7
$count = count($level6);
for($i=0; $i<=$count-1; $i++){
    $selectLevel7= "SELECT * FROM `accounts` WHERE `sponsor` = '$level6[$i]'";
    $resultselectLevel7= mysqli_query($conn, $selectLevel7);
    while($userRow = mysqli_fetch_assoc($resultselectLevel7)){
        $name7 = $userRow['first_name'].' '.$userRow['last_name'];
        array_push($level7Name, $name7);
        $idinvite = $userRow['member_id'];
        array_push($level7,$idinvite);
    }
    }
        
    //level 8
$count = count($level7);
for($i=0; $i<=$count-1; $i++){
    $selectLevel8= "SELECT * FROM `accounts` WHERE `sponsor` = '$level7[$i]'";
    $resultselectLevel8= mysqli_query($conn, $selectLevel8);
    while($userRow = mysqli_fetch_assoc($resultselectLevel8)){
        $name8 = $userRow['first_name'].' '.$userRow['last_name'];
        array_push($level8Name, $name8);
        $idinvite = $userRow['member_id'];
        array_push($level8,$idinvite);
    }
    }
            
    //level 9
$count = count($level8);
for($i=0; $i<=$count-1; $i++){
    $selectLevel9= "SELECT * FROM `accounts` WHERE `sponsor` = '$level8[$i]'";
    $resultselectLevel9= mysqli_query($conn, $selectLevel9);
    while($userRow = mysqli_fetch_assoc($resultselectLevel9)){
        $name9 = $userRow['first_name'].' '.$userRow['last_name'];
        array_push($level9Name, $name9);
        $idinvite = $userRow['member_id'];
        array_push($level9,$idinvite);
    }
    }

        //level 10
$count = count($level9);
for($i=0; $i<=$count-1; $i++){
    $selectLevel10= "SELECT * FROM `accounts` WHERE `sponsor` = '$level9[$i]'";
    $resultselectLevel10= mysqli_query($conn, $selectLevel10);
    while($userRow = mysqli_fetch_assoc($resultselectLevel10)){
        $name10 = $userRow['first_name'].' '.$userRow['last_name'];
        array_push($level10Name, $name10);
        $idinvite = $userRow['member_id'];
        array_push($level10,$idinvite);
    }
    }

$totalMembers = count($level1)+count($level2)+count($level3)+count($level4)+count($level5)+count($level6)+count($level7)+count($level8)+count($level9)+count($level10);
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

    <title>Arvie Direct Sales</title>
    <script src="../js/tailwind-3.1.8.js"></script>
    <script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
    <script src="../node_modules/tw-elements/dist/js/index.min.js"></script>
    <script src="../js/jquery-3.6.1.min.js"></script>

    <title>Arvie Cosmetic & Skincare  ProductsTrading</title>

    <style>
        @media screen and (min-width: 768px) {
            .user-members-content-container {
                width: calc(100vw);
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
        }
        @media screen and (min-width: 1024px) {
            .user-members-content-container {
                width: calc(100vw - 256px) !important;
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
        }

        @media screen and (min-width: 1280px) {
            .user-members-content-container {
                width: calc(100vw - 288px) !important;
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
    <?php include_once "./user-header.php"; ?>
    <?php include_once "./user-footer.php"; ?>

    <div class="flex flex-row">
        <div class="basis-0 lg:basis-64 xl:basis-72 hidden md:flex h-screen">
            <?php include_once "./user-nav.php"; ?>
        </div>
        <?php include_once "./offcanvas.php"; ?>

        <div class=" user-members-content-container pt-24 px-6 pb-6 bg-emerald-100 w-screen">
            <h2 class="text-center font-black text-4xl mb-10">Members</h2>
            <div class="container px-6 mx-auto">
            <h2 class="bg-white rounded-lg p-3 mb-3 font-bold text-xl shadow-lg">Sponsor: <?php echo $sponsorrr; ?></h2>

                <h2 class="bg-white rounded-lg p-3 mb-3 font-bold text-xl shadow-lg">Total: <?php echo $totalMembers ;?></h2>
                <section class="mb-32 text-gray-800  shadow-lg">
                    <div class="accordion accordion-flush" id="accordionFlushExample">
                        <div class="accordion-item border-t-0 border-l-0 border-r-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingOne">
                            <button
                                class="accordion-button relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false"
                                aria-controls="flush-collapseOne">
                                LEVEL 1
                                <span class="absolute right-12"><?php echo count($level1);?></span>
                            </button>
                            </h2>
                            <div id="flush-collapseOne" class="accordion-collapse border-0 collapse show"
                            aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                             
                                    <?php
                                    $count = count($level1);
                                        for($i=0; $i<=$count-1; $i++){
                                            echo "<div> $level1Name[$i] </div>";
                                        }
                              
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-l-0 border-r-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingTwo">
                            <button
                                class="accordion-button collapsed relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false"
                                aria-controls="flush-collapseTwo">
                                LEVEL 2
                                <span class="absolute right-12"><?php echo count($level2);?></span>
                            </button>
                            </h2>
                            <div id="flush-collapseTwo" class="accordion-collapse border-0 collapse" aria-labelledby="flush-headingTwo"
                            data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                                    <!-- <div class="col-span-3">No data</div> -->
                                     
                                    <?php
                                    $count = count($level2);
                                    // echo $count;
                                        for($i=0; $i<=$count-1; $i++){
                                            echo "<div> $level2Name[$i] </div>";
                                        }
                              
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-l-0 border-r-0 border-b-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingThree">
                            <button
                                class="accordion-button collapsed relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false"
                                aria-controls="flush-collapseThree">
                                LEVEL 3
                                <span class="absolute right-12"><?php echo count($level3);?></span>
                            </button>
                            </h2>
                            <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree"
                            data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                                    <?php
                                    $count = count($level3);
                                    // echo $count;
                                        for($i=0; $i<=$count-1; $i++){
                                            echo "<div> $level3Name[$i] </div>";
                                        }
                              
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-l-0 border-r-0 border-b-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingFour">
                            <button
                                class="accordion-button collapsed relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false"
                                aria-controls="flush-collapseFour">
                                LEVEL 4
                                <span class="absolute right-12"><?php echo count($level4);?></span>
                            </button>
                            </h2>
                            <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour"
                            data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                                    <?php
                                    $count = count($level4);
                                    // echo $count;
                                        for($i=0; $i<=$count-1; $i++){
                                            echo "<div> $level4Name[$i] </div>";
                                        }
                              
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-l-0 border-r-0 border-b-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingFive">
                            <button
                                class="accordion-button collapsed relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false"
                                aria-controls="flush-collapseFive">
                                LEVEL 5
                                <span class="absolute right-12"><?php echo count($level5);?>
                            </button>
                            </h2>
                            <div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive"
                            data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                                    <?php
                                    $count = count($level5);
                                    // echo $count;
                                        for($i=0; $i<=$count-1; $i++){
                                            echo "<div> $level5Name[$i] </div>";
                                        }
                              
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-l-0 border-r-0 border-b-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingSix">
                            <button
                                class="accordion-button collapsed relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSix" aria-expanded="false"
                                aria-controls="flush-collapseSix">
                                LEVEL 6
                                <span class="absolute right-12"><?php echo count($level6);?>
                            </button>
                            </h2>
                            <div id="flush-collapseSix" class="accordion-collapse collapse" aria-labelledby="flush-headingSix"
                            data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                                    <?php
                                    $count = count($level6);
                                    // echo $count;
                                        for($i=0; $i<=$count-1; $i++){
                                            echo "<div> $level6Name[$i] </div>";
                                        }
                              
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-l-0 border-r-0 border-b-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingSeven">
                            <button
                                class="accordion-button collapsed relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSeven" aria-expanded="false"
                                aria-controls="flush-collapseSeven">
                                LEVEL 7
                                <span class="absolute right-12"><?php echo count($level7);?>
                            </button>
                            </h2>
                            <div id="flush-collapseSeven" class="accordion-collapse collapse" aria-labelledby="flush-headingSeven"
                            data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                                    <?php
                                    $count = count($level7);
                                    // echo $count;
                                        for($i=0; $i<=$count-1; $i++){
                                            echo "<div> $level7Name[$i] </div>";
                                        }
                              
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-l-0 border-r-0 border-b-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingEight">
                            <button
                                class="accordion-button collapsed relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseEight" aria-expanded="false"
                                aria-controls="flush-collapseEight">
                                LEVEL 8
                                <span class="absolute right-12"><?php echo count($level8);?>
                            </button>
                            </h2>
                            <div id="flush-collapseEight" class="accordion-collapse collapse" aria-labelledby="flush-headingEight"
                            data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                                    <?php
                                    $count = count($level8);
                                    // echo $count;
                                        for($i=0; $i<=$count-1; $i++){
                                            echo "<div> $level8Name[$i] </div>";
                                        }
                              
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-l-0 border-r-0 border-b-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingNine">
                            <button
                                class="accordion-button collapsed relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseNine" aria-expanded="false"
                                aria-controls="flush-collapseNine">
                                LEVEL 9
                                <span class="absolute right-12"><?php echo count($level9);?>

                            </button>
                            </h2>
                            <div id="flush-collapseNine" class="accordion-collapse collapse" aria-labelledby="flush-headingNine"
                            data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                                    <?php
                                    $count = count($level9);
                                    // echo $count;
                                        for($i=0; $i<=$count-1; $i++){
                                            echo "<div> $level9Name[$i] </div>";
                                        }
                              
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-l-0 border-r-0 border-b-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingTen">
                            <button
                                class="accordion-button collapsed relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTen" aria-expanded="false"
                                aria-controls="flush-collapseTen">
                                LEVEL 10
                                <span class="absolute right-12"><?php echo count($level10);?>

                            </button>
                            </h2>
                            <div id="flush-collapseTen" class="accordion-collapse collapse" aria-labelledby="flush-headingTen"
                            data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                                    <?php
                                    $count = count($level10);
                                    // echo $count;
                                        for($i=0; $i<=$count-1; $i++){
                                            echo "<div> $level10Name[$i] </div>";
                                        }
                              
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>


        </div>
    </div>

    

    <script>
        $(document).ready(function(){
            $("#header_members").addClass("bg-gray-300");
            $("#nav_members").addClass("bg-emerald-700");
            $("#nav_members").addClass("text-white");
            $("#nav_members").removeClass("text-gray-600");
            
            $("#nav_members1").addClass("bg-emerald-700");
            $("#nav_members1").addClass("text-white");
            $("#nav_members1").removeClass("text-gray-600");

            $("#payoutFooter").addClass("hidden");
            $("#memberFooter").removeClass("hidden");
            $("#profileFooter").addClass("hidden");
            $("#dashboardFooter").addClass("hidden");

            $("#membersFooterA").removeClass("focus:text-orange-500");
            $("#membersFooterA").addClass("text-orange-500");
        });
    </script>
</body>
</html>
