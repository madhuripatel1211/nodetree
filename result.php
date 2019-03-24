<?php
	
$hostName = "localhost";
$username = "root";
$password = "";
$dbname = "thoughti";
     $mysqli = new mysqli($hostName, $username, $password, $dbname)  or die("Connection failed: " . mysqli_connect_error());
/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}
$parentKey = '0';
$sql = "SELECT * FROM `treeview_items` ";
$result = $mysqli->query($sql);

	      if(mysqli_num_rows($result) > 0)

      {

          $data = membersTree($parentKey);
          

      }else{

          $data=["id"=>"0","name"=>"No Members present in list","text"=>"No Members is present in list","nodes"=>[]];

      }

   

      function membersTree($parentKey)

      {

        
$hostName = "localhost";
$username = "root";
$password = "";
$dbname = "thoughti";
     $mysqli = new mysqli($hostName, $username, $password, $dbname)  or die("Connection failed: " . mysqli_connect_error());

          $sql = 'SELECT id, name from treeview_items WHERE parent_id="'.$parentKey.'"';

  

          $result = $mysqli->query($sql);

   $row1=array();

          while($value = mysqli_fetch_assoc($result)){
             

             $id = $value['id'];

             $row1[$id]['id'] = $value['id'];

             $row1[$id]['name'] = $value['name'];

             $row1[$id]['text'] = $value['name'];

             $row1[$id]['nodes'] = array_values(membersTree($value['id']));

          }

  

          return $row1;

      }

  

      echo json_encode(array_values($data));
?>

