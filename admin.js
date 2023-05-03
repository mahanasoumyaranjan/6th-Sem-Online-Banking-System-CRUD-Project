function clearError(){
    errors=document.getElementsByClassName('form-error');
    for(let item of errors){
        item.innerHTML="";
    }    
}
function validate(){
	clearError();
	var name = document.getElementById("name").value;
	var email = document.getElementById("email").value;
	var password = document.getElementById("password").value;
	if(name == ""){
		document.getElementById("field-error").innerHTML="Username is invalid !!!";
		return false;
	}
	if(email == ""){
		document.getElementById("field-error").innerHTML="Userid can't be empty";
		return false;
	}
	let atPos = email.indexOf('@');
	let dotPos = email.indexOf('.');
	if(atPos<=0 || dotPos<=0){
		document.getElementById("field-error").innerHTML="Userid must be your emailid";
		return false;
	}
	if(password.length<6 || password.length>15){
		document.getElementById("field-error").innerHTML="Please enter a valid password";
		return false;
	}
}