$(function () {

    $(document).on('click', '#eliminar-tarjeta', function () {
        showLoader();
    });

    $(document).on('input', '#numero', function (e) {
        if ($(this).val().length < 19) {
            e.target.value = e.target.value.replace(/[^\dA-Z]/g, '').replace(/(.{4})/g, '$1 ').trim();
        } else {
            e.target.value = e.target.value.substring(0, 19);
        }
    });

    $(document).on('input', '#mesCaducidad', function (e) {
        if ($(this).val().length >= 2) {
            e.target.value = e.target.value.substring(0, 2);
        }
    });

    $(document).on('input', '#anoCaducidad', function (e) {
        if ($(this).val().length >= 2) {
            e.target.value = e.target.value.substring(0, 2);
        }
    });

    $(document).on('input', '#cvv', function (e) {
        if ($(this).val().length >= 3) {
            e.target.value = e.target.value.substring(0, 3);
        }
    });

    $(document).on('click', '.btn-open-modal-tarjetas', function () {
        let id = $(this).data('id');
        let params = '';
        if (id !== undefined) {
            params = '?id=' + id;
        }
        $('#modalTarjetContainer').load(CONTEXT_ROOT + 'usuario/tarjeta/getForm' + params,
            function () {
                $('#modalTarjeta').modal('show');
            });
    });

    $(document).on('click', '#btn-confirmar-tarjeta-carrito', function () {
        showLoader();
        $.ajax({
            url: CONTEXT_ROOT + 'usuario/tarjeta-carrito',
            type: "POST",
            data: $('#formulario-tarjeta').serialize(),
            success: function (fragment) {

                if (fragment.includes('alert-danger')) {
                    $('#modalTarjetContainer').html(fragment);

                } else {
                    $('#tarjetas').replaceWith(fragment);
                    $('#modalTarjeta').modal('hide');
                }
            }, complete: function () {
                hideLoader();
            }
        });
    });

    $(document).on('click', '#btn-confirmar-tarjeta', function () {
        showLoader();
        $.ajax({
            url: CONTEXT_ROOT + 'usuario/tarjeta',
            type: "POST",
            data: $('#formulario-tarjeta').serialize(),
            success: function (fragment) {

                if (fragment.includes('alert-danger')) {
                    $('#modalTarjetContainer').html(fragment);

                } else {
                    $('#tarjetas').html(fragment);
                    $('#modalTarjeta').modal('hide');
                }
            }, complete: function () {
                hideLoader();
            }
        });
    });
});
