$(document).ready(function(){
    $("#signUp").click(function(){

        var fullname = $("#fullname").val();
        var email = $("#email").val();
        var password = $("#password").val();
        var cpassword = $("#cpassword").val();

        if(fullname == ''){
            $("#errmsg").html('Fullname is required!').show();
            return false;
        }
        else if(email == ''){
            $("#errmsg").html('Email is required!').show();
            return false;
        }
        else if(password == ''){
            $("#errmsg").html('Password is required!').show();
            return false;
        }
        else if(cpassword != password){
            $("#errmsg").html('Password dont match').show();
            return false;
        }
    })
})

function showPass() {
    var x = document.getElementById("password");
    var y =document.getElementById("cpassword");
    
    if (x.type === "password" && y.type === 'password') {
      x.type = "text";
      y.type = "text"
    } else {
      x.type = "password";
      y.type = "password";
    }  
  }