var refresh = function () {
    if ($("#Manager").is(":checked")) {
        $('#echipa').prop('disabled', false);
    }
    else {
        $('#echipa').prop('disabled', 'disabled');
    }
};

$(refresh);
$("#tip").change(refresh);