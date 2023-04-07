
<?php  
session_start();

if($_SESSION["uid"] == ''){

   header("Location:login.php");

}
include_once 'inc/db.php';


$uid =  $_SESSION["uid"] ;

$sel = "SELECT * FROM `user` where id ='$uid'";
$res = mysqli_query($con,$sel);
$r = mysqli_fetch_array($res);

?>

 

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Digital prescription</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="/prescription/asset/notiflix/dist/notiflix-3.2.6.min.css" />
  <link rel="stylesheet" href="/prescription/css/style.css" />
  <link rel="stylesheet" href="/prescription/css/style.css"  type="text/css" media="print" />
  
 <style>

@media print {
  .login-div{
	width:500px;
	margin:0 auto;
	box-shadow: 0px 0px 0px 0px black;
	min-height: 200px;
	padding-top: 100px;
}


.prescription{
	border-radius : 16px;
	
	background:#f9f9f9
  }
  .p-header{
	
	 background: #e6e6e6;
	 padding: 16px;
 
  }
  .right{
	 
	align-self: end;
  }
  .hr{
	border-top:1px solid #8080805c;
   
  }
 
  .medi-list{
   margin-top:16px;
  }
  .add-medi{
   margin-top:16px;
  }
 
  .list{
   position: relative;
  }
  .s-m-list{
   position: absolute;
   display: none;
   overflow: scroll;
   max-height:250px
  }
 
  .add-test{
   display:flex
  }
  
  
  @media print {
    .prescription{
		border-radius : 16px;
		
		background:#f9f9f9
	  }
	  .p-header{
		
		 background: #e6e6e6;
		 padding: 16px;
	 
	  }
	  .right{
		 
		align-self: end;
	  }
	  .hr{
		border-top:1px solid #8080805c;
	   
	  }
	 
	  .medi-list{
	   margin-top:16px;
	  }
	  .add-medi{
	   margin-top:16px;
	  }
	 
	  .list{
	   position: relative;
	  }
	  .s-m-list{
	   position: absolute;
	   display: none;
	   overflow: scroll;
	   max-height:250px
	  }
	 
	  .add-test{
	   display:flex
	  }

    .row {
    --bs-gutter-x: 1.5rem;
    --bs-gutter-y: 0;
    display: flex;
    flex-wrap: wrap;
    margin-top: calc(-1 * var(--bs-gutter-y));
    margin-right: calc(-.5 * var(--bs-gutter-x));
    margin-left: calc(-.5 * var(--bs-gutter-x));
}

.col-md-6 {
    flex: 0 0 auto;
    width: 50%;

}
.col-md-4 {
    flex: 0 0 auto;
    width: 33.33333333%;
}
.col-md-8 {
    flex: 0 0 auto;
    width: 66.66666667%;
}
.col-md-3 {
    flex: 0 0 auto;
    width: 25%;
}
 }
 

 </style>
</head>
<body>

<?php 
  
    $pid = $_GET['pid'];
    
    $sel = "SELECT * FROM `patient` where id = '$pid'";
    $res = mysqli_query($con,$sel);
    $row = mysqli_fetch_array($res);


    ?>

<div class="container mt-5">
  <div class="row">
 
    
    <div class="col-sm-12" style="padding:32px;box-shadow:0px 0px 12px 0px rgba(0,0,0,0.1)">
  
       <div class="prescription" id="prescription" style="background:#f9f9f9">

           <div class="p-header">
                
               <div class="row">
              
                  <div class="col-md-6">
                      <div class="h-name">
                      <div><h4><?php echo $r['name'] ?></h4></div>
                      <div><h6><?php echo $r['sub'] ?></h6></div>
                      <div><?php echo $r['mob'] ?></div>
                    </div>
                  </div>

                  <div class="col-md-6">
                     <div align="right">
                     <div class="h-name">
                      <div><h4><?php echo $r['name_bn'] ?></h4></div>
                      <div><h6><?php echo $r['sub_bn'] ?></h6></div>
                      <div><?php echo $r['mob_bn'] ?></div>
                    </div>
                     </div>
              
                  </div>
                
               </div>

             
           </div>


          <div class="row" style="padding: 16px;">
 
            <div class="col-md-6">
                Name : <?php echo $row['name'] ?>
            </div>

            <div class="col-md-6">
               <div align="right">
               <?php echo $row['age'] ?> years|<?php echo $row['sex'] ?>|Date:<?php echo $row['date'] ?>|ID:<?php echo $row['id'] ?>
               </div>
            </div>

          </div>  


           <div class="hr"></div>

           <div class="row">
              <div class="col-md-4" style="padding:16px;padding-left:32px;border-right: 1px solid #8080805c; float:left;">

               <div class="tit">
                <p> <strong>Provisinal Diagnosis</strong></p>
                 <p>Not needed</p>
               </div>

               <div class="tit">
                 <p> <strong>Test</strong></p>
                  <div class="test">
                    <div class="test-list" id="test-list">

                    </div>

                    <div class="list">
                     
                    <div class="add-test">
                       <input type="text" id="test-input" placeholder="Test name" class="form-control" autocomplete="off" />
                       <button class="btn btn-small btn-success" id="add-test-btn">Add</button> 
                     </div>
                     <div class="s-m-list sm2">
                      <ul class="list-group" id="test-list-name">
                      
                          
                      </ul>
                     </div>
                   </div>


                  </div>
               </div>

           
              </div>  
              <div class="col-md-8" style="padding:16px;padding-left:32px">
              <strong>R<sub>X</sub></strong>
              <div class="medi-list" id="medi-list">
           
              </div>

              <div class="add-medi">

              <div class="row">
                <div class="col-md-3">
                     <div class="list">
                     <input type="text" id="name" placeholder="Medicine" class="form-control" autocomplete="off" />
                     <div class="s-m-list">
                      <ul class="list-group" id="medi-name">
                      
                          
                      </ul>
                     </div>
                  </div>
                      
                </div>
              <div class="col-md-2">
                 <select class="form-control" id="time">
                  <option value="1+1+1">1+1+1</option>
                  <option value="1+0+1">1+0+1</option>  
                  <option value="0+0+1">0+0+1</option>
                  <option value="1+0+0">1+0+0</option>
                  <option value="0+1+1">0+1+1</option>
                 </select>

              </div>
              <div class="col-md-3">
               <select class="form-control" id="when">
                  <option value="Before Eatting">Before Eatting</option>
                  <option value="After Eatting">After Eatting</option>
                 </select>
              </div>
              <div class="col-md-2">
                <input type="text" id="day" placeholder="Days" class="form-control" />
              </div>
              <div class="col-md-2">
                 <button class="btn btn-success" id="add">Add</button>
              </div>
              <input type="hidden" name="" id="pid" value="<?php echo $pid; ?>">
            </div>

             </div>
              </div>  
           </div>

       </div>

        <div align="right" style="padding-top:24px">
          <button id="prnt" class="btn btn-success" onclick="PrintElem()">Print Prescription</button>
        </div>
  
     </div>
  </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="/prescription/asset/notiflix/dist/notiflix-3.2.6.min.js"></script>
<script>

  var medi_list = [];


  $("#add").click(function(){

    var name = $("#name").val();
    var time = $("#time").val();
    var when = $("#when").val();
    var day = $("#day").val();
var pid=$('#pid').val();

$.ajax( {
 
      data: {pid:pid,name:name,time:time,when:when,day:day},
      type: 'post',
      url: 'inc/functions.php',
      success: function( data ){

          load_prescription();
      
      }
})


    $("#medi-list").html("");
    $("#name").val("");
    $("#day").val("");


  })
 

  $('#name').keyup(function(){
  
  $.ajax( {
 
      data: {s:$(this).val()},
      dataType: 'json',
      type: 'post',
      url: '/prescription/api_find_medicine.php',
      success: function( data ){

         $(".s-m-list").show();
         $('#medi-name').html("");
          for(var i = 0 ; i< data.length ; i++){

              $('#medi-name').append('<li class="list-group-item" onclick="addValue(\''+data[i].drug_name+'\',\''+data[i].mg+'\')"><div><strong>'+data[i].drug_name+'</strong></div> <div>'+data[i].mg+'</div><div>'+data[i].group_name+'</div></li>')

          }
          console.log(data)
      
      }
})




});


 function addValue(val,mg){
 //$("#name").attr("value",val+" ["+mg+"]");
     $("#name").val(val+" ["+mg+"]")
     $('#medi-name').html("");
     $(".s-m-list").hide();

 }









 var test_list = [];


$("#add-test-btn").click(function(){

  var name = $("#test-input").val();
 

  var medi = {
     
     name:name,
     

  };

  test_list.push(medi);

  $("#test-input").val("");
  $("#test-list").html("");
   
   
    for(var i=0; i < test_list.length; i++){

     $("#test-list").append('<p>'+test_list[i].name+'</p>')

    }

})


$('#test-input').keyup(function(){

$.ajax( {

    data: {s:$(this).val()},
    dataType: 'json',
    type: 'post',
    url: '/prescription/api_find_test.php',
    success: function( data ){

       $(".sm2").show();
       $('#test-list-name').html("");
        for(var i = 0 ; i< data.length ; i++){

            $('#test-list-name').append('<li class="list-group-item" onclick="addValue1(\''+data[i].name+'\')"><div><strong>'+data[i].name+'</strong></div></li>')

        }
        console.log(data)
    
    }
})




});


function addValue1(val){

   $("#test-input").val(val)
   $('#test-list-name').html("");
   $(".sm2").hide();

}
 


function PrintElem()
{

  $('#add-test-btn').css('display','none');
  $('.add-medi').css('display','none');
  $('#add').css('display','none');
  $('#prnt').css('display','none');
  $('#test-input').css('display','none');
  
  window.print() 
 
    // var mywindow = window.open('', 'PRINT');

    // mywindow.document.write('<html><head><title>' + document.title  + '</title>');
    // mywindow.document.write('</head><body >');
    // mywindow.document.write('<link rel="stylesheet" href="http://localhost/prescription/css/style.css" type="text/css" media="print" />');
    // mywindow.document.write('<h1>' + document.title  + '</h1>');
    // mywindow.document.write("<div class='prescription' id='prescription'>"+document.getElementById("prescription").innerHTML+"</div>");
    // mywindow.document.write('</body></html>');

    // mywindow.document.close(); // necessary for IE >= 10
    // mywindow.focus(); // necessary for IE >= 10*/

    // mywindow.print();
    // mywindow.close();

    // return true;
}

   


load_prescription();
function load_prescription()
{
    var pid=$('#pid').val();
    $.ajax( {
 
      data: {pid:pid},
      type: 'post',
      url: 'inc/load_prescription_medicine.php',
      success: function( data ){
        $('#medi-list').html(data);
          console.log(data)
      
      }
})
}
</script>




</body>
</html>


