<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script  src="http://code.jquery.com/jquery-1.10.1.min.js">

    </script>
<script type="text/javascript">



$(document).ready(function(){
	
	$('#final').on('input', function() {
		
		var hos = $('#SearchBy').val();
		var doc = $('#SearchDoctors').val();
		var date = $('#mydate').val();
		//alert($('#SearchBy').val()); 
		 var data = JSON.stringify({ 
                 'StrContactDetails': Details,
                 'IsPrimary':true
               });
		
	 $.ajax({
		  type: "POST",
		  url: "MyData/slotselect",
		  //data: 'hos='+hos+'&doc='+doc+'&date='+date,

		  success: function(result){

			  
			  alert('Load was performed.');
		     /*  if(result == 0)
		        {
		            $('#success').html( code + ' has been redeemed!');
		            // alert('success');//testing purposes
		        }
		        else if(result == 2)
		        {
		            $('#err').html(  code + ' already exists and has already been redeemed....');
		            //alert('fail');//testing purposes
		        }else if(result == 1){
		            $('#err').html(  code + ' redeem code doesnt exist');      
		        }*/

		        alert(result);      
		      }
		  })
		  
		  
	})
});
</script>

<title>Insert title here</title>
</head>
<body>
 <label for="SearchBy">Hospital</label>
 <input id ="SearchBy"  type = text/>
<br>
<br>

<label for="SearchDoctors">Doctor</label>
<input id ="SearchDoctors"  type = text/>
<br>
<br>

<label for="mydate">Date</label>
<input id ="mydate"  type = text/>
<br>
<br>


<input id ="final"  type = text/>







</body>
</html>