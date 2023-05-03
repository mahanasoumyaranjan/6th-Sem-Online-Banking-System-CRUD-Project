function clearError(){
    errors=document.getElementsByClassName('form-error');
    for(let item of errors){
        item.innerHTML="";
    }    
}
function validate(){
	clearError();
	var name = document.getElementById("name").value;
	var password = document.getElementById("password").value;
	if(name == ""){
		document.getElementById("field-error").innerHTML="Username is invalid !!!";
		return false;
	}
	if(password.length<6 || password.length>15){
		document.getElementById("field-error").innerHTML="Please enter a valid password";
		return false;
	}
}