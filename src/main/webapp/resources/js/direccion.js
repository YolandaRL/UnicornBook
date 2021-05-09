$(function () {

    $(document).on('click', '#eliminar-direccion', function () {
        showLoader();
    });

    $(document).on('click', '.btn-open-modal-direcciones', function () {
        let id = $(this).data('id');
        let params = '';
        if (id !== undefined) {
            params = '?id=' + id;
        }
        $('#modalDireccionContainer').load(CONTEXT_ROOT + 'usuario/direccion/getForm' + params,
            function () {
                $('#modalDireccion').modal('show');
            });
    });

    $(document).on('click', '#btn-confirmar-direccion-carrito', function () {
        showLoader();
        $.ajax({
            url: CONTEXT_ROOT + 'usuario/direccion-carrito',
            type: "POST",
            data: $('#formulario-direccion').serialize(),
            success: function (fragment) {

                if (fragment.includes('alert-danger')) {
                    $('#modalDireccionContainer').html(fragment);

                } else {
                    $('#direcciones').replaceWith(fragment);
                    $('#modalDireccion').modal('hide');

                }
            }, complete: function () {
                hideLoader();
            }
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
                    $('#modalDireccionContainer').html(fragment);

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
