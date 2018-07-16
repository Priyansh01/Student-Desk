$(document).ready(function(){
	

$('#reportsubmit').click(function(){
	
	 var cls =$(".form-control");
	 var n =cls.length;
	 var cls2=$(".form");
	 var n2=cls2.length;
	  var internal = [];
	  var external= [];
	  var total = [];
	  
	 
	 
	 for(var i=0;i<n;i++){
		  if(cls[i].classList[1]=="internal"){
			  internal.push(cls[i].value);
		  }
		  else if(cls[i].classList[1]=="external"){
			  external.push(cls[i].value);
		  }
		 
		  else if(cls[i].classList[1]=="total"){
			  total.push(cls[i].value);
		  }
		  	  
		 	  
 }
	
		alert(internal[]);
	 console.log("$(item)");
	$.ajax({
			
			type:'POST',
		 url:'insertmarks_record.jsp',
		 data:{
			 internal: internal,
			 external:external
			 total:total,
			 
		 },
		 success:function(msg){
		 
			   alert("Report Created Successfully..!!");
			  window.location.href="marks.jsp";
			 }
			  
	  });
	
	  
});

});
		 