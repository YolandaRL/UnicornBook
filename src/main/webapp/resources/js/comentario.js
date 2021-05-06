$(function () {
    $(document).on('click', '#btn-confirmar-comentario', function () {
        showLoader();
        let form = $('#comentarioForm');
        $.ajax({
            url: form.attr('action'),
            type: "POST",
            data: form.serialize(),
            success: function (fragment) {
                $('#comentarioFormContainer').html(fragment);
            }, complete: function () {
                hideLoader();
            }
        });
    });
});
