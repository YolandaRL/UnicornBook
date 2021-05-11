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

    $(document).on('click', '.editar-comentario', function () {
        showLoader();
        let modal = $('#modalComentario');
        $('#type').val($(this).data('type'));
        $('#form-comentario-edicion', modal).load(CONTEXT_ROOT + "usuario/comentario/editar/libro/" + $(this).data('id-libro'), function () {
            modal.modal('show');
            hideLoader();
        });
    });

    $(document).on('click', '#btn-confirmar-comentario-modal', function () {
        showLoader();
        let type = $('#type').val();
        let form = $('#comentarioForm', $('#modalComentario'));
        $.ajax({
            url: CONTEXT_ROOT + 'usuario/comentario/editar?type=' + type,
            type: "POST",
            data: form.serialize(),
            success: function (fragment) {
                if ("DESDE_LIBRO" === type) {
                    $('#comentarioFormContainer').html(fragment);
                } else {
                    $('#comentarios').html(fragment);
                }
            },
            complete: function () {
                $('#modalComentario').modal('hide');
                hideLoader();
            }
        });
    });
});
