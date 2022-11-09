<nav class="navbar block sm:block px-4 py-2.5 sm:pt-2.5 bg-emerald-800 fixed w-full z-50 top-0 left-0 border-b border-gray-600">
  <div class="flex flex-wrap justify-between items-center w-full">

    <div class="w-2/6 lg:hidden hidden sm:flex">
        <!-- <button data-collapse-toggle="navbar-sticky" type="button" class="burger-button inline-flex items-center p-2 text-sm text-white rounded-lg focus:outline-none" aria-controls="navbar-sticky" aria-expanded="false"> -->
                <!-- <span class="sr-only">Open main menu</span> -->
                <!-- <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"></path></svg> -->
        <!-- </button> -->
        <button  type="button" class="burger-button inline-flex items-center p-2 text-sm text-white rounded-lg focus:outline-none" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
                <!-- <span class="sr-only">Open main menu</span> -->
                <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"></path></svg>
        </button>
        <!-- <button class="inline-block px-6 py-2.5 bg-blue-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg  focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
      Button with data-bs-target
    </button> -->
    </div>

    <div class="w-2/6 h-full text-center lg:text-left">
        <a href="../index.php" class="inline-block align-middle">
            <img src="../images/logo.jpg" class="h-9 lg:h-11" alt="Logo">
            <span class="self-center text-l font-semibold whitespace-nowrap text-white"></span>
        </a>
    </div>

    <div class="flex flex-row w-2/6 lg:order-2 justify-end">
    <!-- <textarea class="opacity-0" id="referralLink1" cols="45" rows="6">http://localhost/ArvieCSP/signup.php?arviecsp=<?php echo $member_id; ?>

</textarea> -->
        <!-- <div class="lg:w-1/2 text-center items-center font-bold"><p class="py-4 text-slate-100 text-lg sm:text-xl lg:text-xl xl:text-sm font-medium">http://localhost/ArvieCSP/signup.php?arviecsp=<?php echo $member_id; ?></p></div> -->
        <div class="lg:w-1/2 text-center items-center font-bold hidden sm:flex mr-12 lg:mr-0">
            <button onclick="setClipboard('<?php echo $member_id; ?>')"type="button" class="px-6 py-2.5 bg-blue-600 text-white font-medium text-sm lg:text-sm uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out" >
                        Referral Link
            </button>
        </div>


        <div class="lg:w-1/2 "><button id="dropdownAvatarNameButton" data-dropdown-toggle="dropdownAvatarName" class="float-right flex items-center text-sm font-medium text-neutral-400 rounded-full hover:text-white lg:mr-0" type="button">
            <span class="sr-only">Open user menu</span>
            <!-- <img class="w-11 h-11 rounded-full bg-cover bg-no-repeat" src="../images/user/profile-pic/5R (3).jpg" alt="user photo"> -->
            <div class="pictureBadge m-0" style=" background-image: url('../images/user/profile-pic/default-pic.png')"></div>
            <svg class="w-4 h-4 mx-1.5" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
        </button></div>

        <!-- Dropdown menu -->
        <div id="dropdownAvatarName" class="hidden z-10 w-44 bg-white rounded divide-y divide-gray-300 drop-shadow-xl" style="position: absolute; inset: 0px auto auto 0px; margin: 0px; transform: translate(0px, 352px);" data-popper-reference-hidden="" data-popper-escaped="" data-popper-placement="bottom">
            <div class="py-3 px-4 text-sm text-gray-900">
            <div class="font-medium "><?php echo $_SESSION["first_name"]." ". $_SESSION["last_name"];?></div>
            <div class="truncate"><?php echo $_SESSION["email_address"];?></div>
            </div>
            <ul class="py-1 text-sm text-gray-700" aria-labelledby="dropdownInformdropdownAvatarNameButtonationButton">
            <li>
                <a href="../user/index.php" id="header_dashboard" class="block py-2 px-4 hover:bg-gray-200">Home</a>
            </li>
            <li>
                <a href="#" id="header_members" class="lg:hidden block py-2 px-4 hover:bg-gray-200">Products</a>
            </li>
            <li>
                <a href="#" id="header_request" class="lg:hidden block py-2 px-4 hover:bg-gray-200">Contact</a>
            </li>
            <li>
                <a href="#" id="header_edit" class="lg:hidden block py-2 px-4 hover:bg-gray-200">About</a>
            </li>
            </ul>
            <div class="py-1">
            <a href="../includes/auth/signout.php" class="block py-2 px-4 text-sm text-gray-700 hover:bg-gray-200">Sign out</a>
            </div>
        </div>
    </div>


    <div class="w-full lg:w-2/6 lg:order-1 lg:flex lg:items-center">
        <div class="nav-items hidden justify-between items-center lg:flex lg:m-auto" id="navbar-sticky">
            <ul class="flex flex-col lg:py-4 pt-6 pb-3 mt-3 bg-emerald-800 border-t border-gray-800 lg:flex-row lg:space-x-8 lg:mt-0 lg:text-sm lg:font-medium lg:border-0">
                <li>
                    <a href="#" class="block py-2 pr-4 pl-3 text-neutral-400 bg-emerald-700 rounded lg:bg-transparent lg:text-neutral-400 lg:p-0" aria-current="page">Home</a>
                </li>
                <li>
                    <a href="#" class="block py-2 pr-4 pl-3 text-neutral-400 hover:text-white rounded hover:bg-emerald-700 lg:hover:bg-transparent lg:p-0">Products</a>
                </li>
                <li>
                    <a href="#" class="block py-2 pr-4 pl-3 text-neutral-400 hover:text-white rounded hover:bg-emerald-700 lg:hover:bg-transparent lg:p-0">About</a>
                </li>
                <li>
                    <a href="#" class="block py-2 pr-4 pl-3 text-neutral-400 hover:text-white rounded hover:bg-emerald-700 lg:hover:bg-transparent lg:p-0">Contact</a>
                </li>
            </ul>
        </div>
    </div>
    
  </div>
</nav>

<script>
     function copyText() {
        // var link= 'http://localhost/ArvieCSP/signup.php?arviecsp='+referralLink
	 let referralLink1=document.querySelector("#referralLink1"); //getting the value of text area.
     referralLink1.select(); //select() will select the text of textarea.
	 document.execCommand("copy"); //equivalent to clicking ctrl + c.
     Swal.fire({
  position: 'top-end',
  icon: 'success',
  title: 'Link Copied',
  showConfirmButton: false,
  timer: 1500
})

	 //the text is now copied in just one click.
 }
 function setClipboard(link) {
    var tempInput = document.createElement("input");
    tempInput.style = "position: absolute; left: -1000px; top: -1000px";
    tempInput.value = 'http://45.124.138.104/ArvieCSP/signup.php?arviecsp='+link;
    document.body.appendChild(tempInput);
    tempInput.select();
    document.execCommand("copy");
    document.body.removeChild(tempInput);

    Swal.fire({
  position: 'top-end',
  icon: 'success',
  title: 'Link Copied http://45.124.138.104/ArvieCSP/signup.php?arviecsp='+link,
  showConfirmButton: false,
  timer: 1500
})
}

    </script>