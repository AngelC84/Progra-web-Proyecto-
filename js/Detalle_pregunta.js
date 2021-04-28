$('document').ready(function(){
    function readImage(input){
        if(input.files && input.files[0]){
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#FotografiadeRespuesta').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $('#FotoResp').change(function(){
        readImage(this);
    });
    });