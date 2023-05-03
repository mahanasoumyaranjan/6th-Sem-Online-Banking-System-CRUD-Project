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
	var mobile = document.getElementById("mobile").value;
	var dob = document.getElementById("dob").value;
	var gender = document.getElementById("gender").value;
	if(name == ""){
		dcument.getElementById("field-error").innerHTML="Please enter customer name ";
		return false;
	}
	let atPos = email.indexOf('@');
	let dotPos = email.indexOf('.');
	if(email == ""){
		document.getElementById("field-error").innerHTML="Please enter customer email ";
		return false;
	}
	if(atPos<=0){
		document.getElementById("field-error").innerHTML="Email should contain '@' symbol ";
		return false;
	}
	if(dotPos<=0){
		document.getElementById("field-error").innerHTML="Email also contains one . sysmbol";
		return false;
	}
	if(password.length<4 || password.length>10){
		document.getElementById("field-error").innerHTML="Password length from 4 digits to 10 digits only";
		return false;
	}
	if(mobile.length != 10){
		document.getElementById("field-error").innerHTML="Mobile number should be of 10 digit";
		return false;
	}
	if(dob == ""){
		document.getElementById("field-error").innerHTML="Please enter a valid date in dd:mm:yy format";
		return false;
	}
	if(gender == ""){
		document.getElementById("field-error").innerHTML="Please select a gender";
		return false;
	}
}