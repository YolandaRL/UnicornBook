$(function () {

    $(document).on('click', '.btn-open-modal-direcciones', function () {
        let id = $(this).data('id');
        let params = '';
        if (id !== undefined) {
            params = '?id=' + id;
        }
        $('#modalDireccion').load(CONTEXT_ROOT + 'usuario/direccion/getForm' + params,
            function () {
                $('#modalDireccion').modal('show');
            });
    });

    $(document).on('click', '#btn-confirmar-direccion', function () {
        showLoader();
        $.ajax({
            url: CONTEXT_ROOT + 'usuario/direccion',
            type: "POST",
            data: $('#formulario-direccion').serialize(),
            success: function (fragment) {

                if (fragment.includes('alert-danger')) {
                    $('#modalDireccion').html(fragment);

                } else {
                    $('#direcciones').html(fragment);
                    $('#modalDireccion').modal('hide');

                }
            }, complete: function () {
                hideLoader();
            }
        });
    });
});
