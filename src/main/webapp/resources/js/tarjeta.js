$(function () {

    $(document).on('click', '.btn-open-modal-tarjetas', function () {
        let id = $(this).data('id');
        let params = '';
        if (id !== undefined) {
            params = '?id=' + id;
        }
        $('#modalTarjeta').load(CONTEXT_ROOT + 'usuario/tarjeta/getForm' + params,
            function () {
                $('#modalTarjeta').modal('show');
            });
    });

    $(document).on('click', '#btn-confirmar-tarjeta', function () {

        $.ajax({
            url: CONTEXT_ROOT + 'usuario/tarjeta',
            type: "POST",
            data: $('#formulario-tarjeta').serialize(),
            success: function (fragment) {

                if (fragment.includes('alert-danger')) {
                    $('#modalTarjeta').html(fragment);

                } else {
                    $('#tarjetas').html(fragment);
                    $('#modalTarjeta').modal('hide');

                }
            }
        });
    });
});
