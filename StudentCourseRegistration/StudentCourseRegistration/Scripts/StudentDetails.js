function Validate() {
    var ValidationSummary = "";
    ValidationSummary += FirstNameValidation();
    ValidationSummary += LastNameValidation();
    ValidationSummary += PhonenoValidation();
    if (ValidationSummary != "") {
        //alert(ValidationSummary);
        return false;
    }
    else {
        //alert("Information submited successfuly");
        return true;
    }
}

function FirstNameValidation() {
    var fname;
    var controlId = document.getElementById("txtFirstName");
    fname = controlId.value;
    var val = /^[a-zA-Z ]+$/
    if (fname == "") {
        return ("Please Enter First Name" + "\n");
    }
    else if (val.test(fname)) {
        return "";

    }
    else {
        return ("Name accepts only spaces and charcters" + "\n");
    }
}
function LastNameValidation() {
    var fname;
    var controlId = document.getElementById("txtLastName");
    fname = controlId.value;
    var val = /^[a-zA-Z ]+$/
    if (fname == "") {
        return ("Please Enter  Last Name" + "\n");
    }
    else if (val.test(fname)) {
        return "";

    }
    else {
        return ("Name accepts only spaces and charcters" + "\n");
    }
}

function PhonenoValidation() {
    var mob = /^[1-9]{1}[0-9]{9}$/;
    var txtMobile = document.getElementById("txtContact");
    if (mob.test(txtMobile.value) == false) {
        //alert("Please enter valid mobile number.");
        txtMobile.focus();
        return ("Please enter valid mobile number.");
    }
    return "";
}