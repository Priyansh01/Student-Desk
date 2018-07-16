$(document).ready(function()
{
		
		var email = "" ;
		var pass = "" ;
		var pos = "" ;
		
			
			
	        $("#pos").change(function(){
				var vall = $(this).find("option:selected").text();
				pos = vall;
			});

	
				
		
			
				
				
				$("#login-submit").click(function(){
					
					if( email == "" || pass == "" ||$('#pos').val()==null )
					{
					alert("Please Fill All fields!!");
					}
					else
					{
						$.ajax({
							async:false,
							type:'POST',
						 url:'/Student Desk/savory/admin_login.jsp',
						 data:"email="+email+"&pass="+pass+"&pos="+pos+",
						 success:function(msg){
						  if(msg.indexOf(email)>-1){
							  
							  document.location='/Student Desk/savory/services.html';
						  }
						  else{
							  alert("Invalid Email and password..!!");
						  }
						 }
						});
					}
				});

});
