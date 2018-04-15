<?php
//Include database configuration file
include('dbConfig.php');

if(isset($_POST["level1"]) && !empty($_POST["level1"])){
    //Get all state data
    $query = $db->query("SELECT * FROM gs_hierarchy WHERE parent_id = ".$_POST['level1']);
    
    //Count total number of rows
    $rowCount = $query->num_rows;
    
    //Display states list
    if($rowCount > 0){
        echo '<option value="">Select level2</option>';
        while($row = $query->fetch_assoc()){ 
            echo '<option value="'.$row['id'].'">'.$row['alias'].'</option>';
        }
    }else{
        echo '<option value="">not available</option>';
    }
}

if(isset($_POST["level2"]) && !empty($_POST["level2"])){
    //Get all city data
    $query = $db->query("SELECT * FROM gs_hierarchy WHERE parent_id = ".$_POST['level2']);
    
    //Count total number of rows
    $rowCount = $query->num_rows;
    
    //Display cities list
    if($rowCount > 0){
        echo '<option value="">Select level3</option>';
        while($row = $query->fetch_assoc()){ 
            echo '<option value="'.$row['id'].'">'.$row['alias'].'</option>';
        }
    }else{
        echo '<option value="">not available</option>';
    }
}
?>