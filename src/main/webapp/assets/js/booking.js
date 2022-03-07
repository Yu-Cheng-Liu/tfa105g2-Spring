$(function(){   
	 $("#updateReservation").on("click",function(){
        $(".date").removeAttr("disabled");
        $(".remark").removeAttr("disabled");
    })
    
    function clearForm() {
	var inputs = document.getElementsByTagName("input");
	for(var i=0; i<inputs.length; i++) {
		if(inputs[i].type=="text") {
			inputs[i].value="";
		}
	}
}
}
)
