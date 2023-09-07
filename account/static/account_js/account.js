function showCenter(){
    document.getElementById('card-blur').style.display = 'block';
}
function hideCenter(){
    document.getElementById('card-blur').style.display = 'none';
}

function showCenter1(){
    document.getElementById('card-blur1').style.display = 'block';
}
function hideCenter1(){
    document.getElementById('card-blur1').style.display = 'none';
}

function showCenter2(){
    document.getElementById('card-blur2').style.display = 'block';
}
function hideCenter2(){
    document.getElementById('card-blur2').style.display = 'none';
}

function showCenter3(){
    document.getElementById('card-blur3').style.display = 'block';
}
function hideCenter3(){
    document.getElementById('card-blur3').style.display = 'none';
}

function pCard(){
   var card = document.getElementById('profileCard');

    if(card.style.display == 'none'){
        card.style.display = 'block';
    }
    else{
        card.style.display = 'none';
    }
}

function incrementValue()
{
    var value = parseInt(document.getElementById('number').value, 10);
    value = isNaN(value) ? 0 : value;
    value++;
    document.getElementById('number').value = value;
}

function viewImg(){
    const [file] = imgInp.files
    if (file) {
       img.src = URL.createObjectURL(file)
    }
}

function ShowCreateShop(){
    var shopId = $("#shopAcc").val();

    if(shopId == '<QuerySet []>'){
        document.getElementById('shopName').style.display="none";
        document.getElementById('myprod').style.display="none";
        $('#shopAccount').modal('show');
    }
}

window.onload = function(){
    ShowCreateShop()
}

function displayAddtocart(name){
    $("#orderProd").modal('show');
    $("#modalcart").html(
                 '<div style="font-weight: bold;">Add to cart</div>'+
                '<div class="form-input">'+
                '<input type="text" name="prod_id" value="'+name+'" required hidden>'+
                    '<input type="number" id="number" name="cart_qntty" value="1" required>'+
                '</div> <br>'+
                '<div class="form-input">'+
                    '<input type="submit" value="Add to cart">'+
                '</div>').show()
                $("#modalCtnt").html('').hide()
}

function displayOrder(name){
    $("#orderProd").modal('show');
    $("#modalCtnt").html(
                 '<div style="font-weight: bold;">Place Order</div>'+
                '<div class="form-input">'+
                '<input type="text" name="product_id" value="'+name+'" required hidden>'+
                '<input type="text" name="phone_num" placeholder="Phone Number" required> <br><br>'+
                '<input type="text" name="address" value="" placeholder="Complete Address" required> <br><br>'+
                    '<input type="number" id="number" name="prod_qntty" value="1" required>'+
                '</div> <br>'+
                '<div class="form-input">'+
                    '<input type="submit" value="Order now">'+
                '</div>').show()
                $("#modalcart").html('').hide();
}