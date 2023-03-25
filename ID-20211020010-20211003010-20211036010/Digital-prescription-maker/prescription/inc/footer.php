<div class="mt-5 p-4 bg-dark text-white text-center">
  <p>Footer</p>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="/prescription/asset/notiflix/dist/notiflix-3.2.6.min.js"></script>

<script>
 
$('form#addPatient').submit( function(e){
   var data = new FormData( $('form#addPatient')[0] );
   
   e.preventDefault();
   
   $.ajax( {
      processData: false,
      contentType: false,
      data: data,
      dataType: 'json',
      type: $( this ).attr( 'method' ),
      url: '/prescription/api_add_patient.php',
      success: function( data ){

         if(data.status="success"){
            alert("Added");

            $("#name").val("");
            $("#age").val("");
            $("#address").val("");
            
         }else{
            alert("Something went wrong");
         }
          
      }
})

})




</script>







</body>
</html>