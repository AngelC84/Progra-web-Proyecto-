function readImage(input){
    if(input.files && input.files[0]){
        var reader = new FileReader();

        reader.onload = function(e) {
            $('#imagenDescriptiva').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
}
[18:33]
$('#image').change(function(){
    readImage(this);

});