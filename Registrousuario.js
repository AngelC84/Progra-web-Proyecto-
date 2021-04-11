$('document').ready(function(){
function readImage(input){
    if(input.files && input.files[0]){
        var reader = new FileReader();
        reader.onload = function(e) {
            $('#FotografiadePerfil').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }
}
$('#FotoUsuario').change(function(){
    readImage(this);
});
});