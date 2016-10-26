$(document).ready(function() {

    $('#submit').click(function(event){

        data = $('#password').val();
        var len = data.length;

        if(len < 7) {
           var box = bootbox.alert({
                message: "<b>Parola trebuie sa contina minim 8 caractere</b>"});
            // pt a schimba culoarea butoanelor
            box.find(".btn-primary").removeClass("btn-primary").addClass("btn-success");
            // Formularul nu va fi trimis
            event.preventDefault();
        }


        if(len > 7 && ($('#password').val() != $('#confpass').val())) {
           var box = bootbox.alert("<b>Parolele introduse nu corespund</b>");
            // pt a schimba culoarea butoanelor
            box.find(".btn-primary").removeClass("btn-primary").addClass("btn-success");
            // Formularul nu va fi trimis
            event.preventDefault();
        }


    });


});

