function clearError(){
    errors=document.getElementsByClassName('form-error');
    for(let item of errors){
        item.innerHTML="";
    }    
}
function validate(){
	clearError();
	var name = document.getElementById("i3").value;
	var email = document.getElementById("i5").value;
	var mobile = document.getElementById("mobile").value;
	var password = document.getElementById("password").value;
	var dob = document.getElementById("i8").value;
	var address = document.getElementById("i9").value;
	var gender = document.getElementById("gender").value;
	var emp_type = document.getElementById("op").value;
	if(name == ""){
		document.getElementById("field-error").innerHTML="Name can't be null";
		return false;
	}
	let atPos=email.indexOf('@');
	let dotPos = email.indexOf('.');
	if(email == "" || atPos<=0 || dotPos<=0){
		document.getElementById("field-error").innerHTML="Enter a valid mail id";
		return false;
	}
	if(mobile.length != 10){
		document.getElementById("field-error").innerHTML="Mobile number should be 10 digits only";
		return false;
	}
	if(password.length > 10){
		document.getElementById("field-error").innerHTML="Password length upto 10 only";
		return false;
	}
	if(dob == ""){
		document.getElementById("field-error").innerHTML="Enter Date-Of-Birth";
		return false;
	}
	if(address==""){
		document.getElementById("field-error").innerHTML="Address can't be null";
		return false;
	}
	if(gender==""){
		document.getElementById("field-error").innerHTML="Select one gender";
		return false;
	}
	if(emp_type==""){
		document.getElementById("field-error").innerHTML="Enter a employee type";
		return false;
	}
}