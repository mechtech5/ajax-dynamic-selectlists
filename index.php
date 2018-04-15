<!DOCTYPE html>
<html>
<title>Levels</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">   
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open Sans">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
    
<style>
h1,h2,h3,h4,h5,h6 {font-family: "Oswald"}
body {font-family: "Open Sans"}
    
    
.select-boxes{width: 280px;text-align: center;}
select {
    background-color: #F5F5F5;
    border: 1px double #15a6c7;
    color: #1d93d1;
    font-family: Georgia;
    font-weight: bold;
    font-size: 14px;
    height: 39px;
    padding: 7px 8px;
    width: 250px;
    outline: none;
    margin: 10px 0 10px 0;
}
select option{
    font-family: Georgia;
    font-size: 14px;
}

</style>
<script type="text/javascript">
$(document).ready(function(){
    $('#level1').on('change',function(){
        var level1 = $(this).val();
        if(level1){
            $.ajax({
                type:'POST',
                url:'ajaxData.php',
                data:'level1='+level1,
                success:function(html){
                    $('#level2').html(html);
                    $('#level3').html('<option value="">Select level2 first</option>'); 
                }
            }); 
        }else{
            $('#level2').html('<option value="">Select level1 first</option>');
            $('#level3').html('<option value="">Select level2 first</option>'); 
        }
    });
    
    $('#level2').on('change',function(){
        var level2 = $(this).val();
        if(level2){
            $.ajax({
                type:'POST',
                url:'ajaxData.php',
                data:'level2='+level2,
                success:function(html){
                    $('#level3').html(html);
                }
            }); 
        }else{
            $('#level3').html('<option value="">Select level2 first</option>'); 
        }
    });

    $('#submit').click(function(event) {
        var val1 = $('#level1').val();
        var val2 = $('#level2').val();
        var val3 = $('#level3').val();
        if(val3 == ""){
            if(val2 == ""){
                if(val1 == ""){
                    console.log('railway');
                }else{
                    console.log(val1);
                }
            }else{
                console.log(val2);
            }
        }else{
            console.log(val3);
        }
    });
});
</script>
      
    
<body class="w3-light-grey">  
<!-- w3-content defines a container for fixed size centered content, 
and is wrapped around the whole page content, except for the footer in this example -->
<div class="w3-content" style="max-width:1600px">
  <div class="w3-row w3-padding w3-border">
    <div class="w3-col l12 s12">
      <div class="w3-container w3-white w3-margin w3-padding-large">
        
    <h2 style="text-align: center";>Dynamic Dependent Select Box using jQuery, Ajax and PHP by Lisenme</h2>
    <br>
    <div class="select-boxes">
    <?php
    //Include database configuration file
    include('dbConfig.php');
    $query = $db->query("SELECT * FROM gs_hierarchy WHERE parent_id = 0");
    $rowCount = $query->num_rows;
    ?>
    <select name="level1" id="level1" >
        <option value="">Select level1</option>
        <?php
        if($rowCount > 0){
            while($row = $query->fetch_assoc()){ 
                echo '<option value="'.$row['id'].'">'.$row['alias'].'</option>';
            }
        }else{
            echo '<option value="">not available</option>';
        }
        ?>
    </select>
    
    <select name="level2" id="level2">
        <option value="">Select level1 first</option>
    </select>
    
    <select name="level3" id="level3">
        <option value="">Select level2 first</option>
    </select>
    </div>
    <button id="submit">Submit</button>
    </div>
    </div>
  </div>
</div>
</body>
</html> 