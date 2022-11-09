

    
<!-- Code for Rebates Amount -->

<?php
$db = $conn;
 $tableNameRebates="rebatesamount";
 $columnsRebates= ['id', 'rebatesA','rebatesB'];
 $fetchDataRebates = fetch_data_WD($db, $tableNameRebates, $columnsRebates);
 
 
 function fetch_data_WD($db, $tableNameRebates, $columnsRebates){

   
  if(empty($db)){
   $msg= "Database connection error";
  }elseif (empty($columnsRebates) || !is_array($columnsRebates)) {
   $msg="columns Name must be defined in an indexed array";
  }elseif(empty($tableNameRebates)){
    $msg= "Table Name is empty";
 }else{
 $columnName = implode(", ", $columnsRebates);
 // $query = "SELECT * FROM `model`;";
 $query = "SELECT * FROM `rebatesamount`";
 
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
?>
<div class="modal fade fixed top-0 left-0 hidden w-full h-full outline-none overflow-x-hidden overflow-y-auto" id="exampleModalLg" tabindex="-1" aria-labelledby="exampleModalLgLabel" aria-modal="true" role="dialog">
  <div class="modal-dialog modal-lg relative w-auto pointer-events-none">
    <div class="modal-content border-none shadow-lg relative flex flex-col w-full pointer-events-auto bg-white bg-clip-padding rounded-md outline-none text-current">
      <div class="modal-header flex flex-shrink-0 items-center justify-between p-4 border-b border-gray-200 rounded-t-md">
        <h5 class="text-xl font-medium leading-normal text-gray-800" id="exampleModalLgLabel">
          Edit Rebates Amount
        </h5>
        <button type="button"
          class="btn-close box-content w-4 h-4 p-1 text-black border-none rounded-none opacity-50 focus:shadow-none focus:outline-none focus:opacity-100 hover:text-black hover:opacity-75 hover:no-underline"
          data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body relative p-4">
      <div class="flex flex-col">
  <div class="overflow-x-auto sm:-mx-6 lg:-mx-8">
    <div class="py-2 inline-block min-w-full sm:px-6 lg:px-8">
      <div class="overflow-hidden">
        <form method="POST" action="index.php">
        <table class="min-w-full">
          <thead class="border-b">
            <tr>
            <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 text-left">
                Level
              </th>
              <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 text-left">
                Botanical
              </th>
              <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 text-left">
                Kapenato
              </th>
            </tr>
          </thead>
          <tbody>
          <?php          
           if(is_array($fetchDataRebates)){      
                         $idNumber = 1;
                                 foreach($fetchDataRebates as $data){
                                    $level = $data['id'];
                                    $rebatesA = $data['rebatesA'];
                                    $rebatesB = $data['rebatesB'];
                                 

                                 ?>
                <tr class="border-b">
                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
                                    <?php echo $level; ?>
                </td>
                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
                        <input type="number" name="rebatesA<?php echo $level;?>" value="<?php echo $rebatesA;?>"
                        disabled class="form-control block px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out  m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="exampleInputPassword1" placeholder="">
                    </td>
                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
                        <input type="number" name="rebatesB<?php echo $level;?>" value="<?php echo $rebatesB;?>" disabled class="form-control block px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out  m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="exampleInputPassword1" placeholder="">
                    </td>
                </tr>
                  <?php 
                     $idNumber++; }}else{
                  }
                ?>

            <!-- <tr class="border-b">
              <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
              <input type="number" class="form-control block px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out  m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="exampleInputPassword1" placeholder="">
              </td>
              <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
              <input type="number" class="form-control block px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out  m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="exampleInputPassword1" placeholder="">
              </td>
            </tr> -->
            
          </tbody>
        </table>
       
      </div>
    </div>
  </div>
</div>
      </div>
      <div
        class="modal-footer flex flex-shrink-0 flex-wrap items-center justify-end p-4 border-t border-gray-200 rounded-b-md">
        <button type="button" class="px-6 py-2.5 bg-purple-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-purple-700 hover:shadow-lg focus:bg-purple-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-purple-800 active:shadow-lg transition duration-150 ease-in-out" data-bs-dismiss="modal">Cancel</button>
        <button type="button" class="px-6 py-2.5 bg-green-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-green-700 hover:shadow-lg focus:bg-green-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-green-800 active:shadow-lg  transition duration-150 ease-in-out ml-1" onclick="enableRebates()">Edit</button>  
        <button type="submit" name="changeRebate" class="px-6 py-2.5 bg-blue-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg  transition duration-150 ease-in-out ml-1">Save changes</button>
      </div>
      </form>
    </div>
  </div>
</div>