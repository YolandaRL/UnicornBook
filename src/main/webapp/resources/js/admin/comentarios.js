jQuery(function () {

    $(document).on('change', '.estado-comentario', function () {
        showLoader();
        let context = $(this).closest('tr');
        let idEstado = $(this).val();
        let idUsuario = $(this).data('id-usuario');
        let idLibro = $(this).data('id-libro');

        $.ajax({
            url: CONTEXT_ROOT + 'consola/comentarios/actualizar-estado?idLibro=' + idLibro + '&idUsuario=' + idUsuario + '&idEstado=' + idEstado,
            type: "GET",
            success: function (tr) {
                context.html(tr);
            }, complete: function () {
                hideLoader();
            }
        });
    });

});
