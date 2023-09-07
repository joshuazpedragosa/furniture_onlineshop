$(document).ready(function(){
    $("#signIn").click(function(){

        var email = $("#email").val();
        var password = $("#password").val();

        if(email == ''){
            $("#errmsg").html('Email is required!').show();
            return false;
        }
        else if(password == ''){
            $("#errmsg").html('Password is required!').show();
            return false;
        }
    })
})

function showPass() {
    var x = document.getElementById("password");
    
    if (x.type === "password") {
      x.type = "text";
    } else {
      x.type = "password";
    }  
  }