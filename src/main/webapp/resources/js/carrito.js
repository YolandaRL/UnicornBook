jQuery(function () {

    if ($('#showCestaSimplificado').val() === 'true') {
        var myOffcanvas = document.getElementById('mi-cesta-container')
        var bsOffcanvas = new bootstrap.Offcanvas(myOffcanvas);
        bsOffcanvas.toggle();
    }

    $(document).on('click', '.navigation-prevent', function (e) {
        e.preventDefault();
    });

    $(document).on('click', 'button.actualizar-carrito', function () {
        showLoader();
        let context = $('select[name="cantidad"]');
        location.href = CONTEXT_ROOT + 'usuario/carrito/update/' + $('option:selected', context).data('id-libro') + '/' + context.val();
    });

    $(document).on('change', 'select.actualizar-carrito', function () {
        showLoader();
        let context = $(this);
        location.href = CONTEXT_ROOT + 'usuario/carrito/update/' + $('option:selected', context).data('id-libro') + '/' + context.val() +
            '?showCestaSimplificado=false';
    });

    $(document).on('click', '.avanzar-formulario', function () {
        showLoader();
        $('#siguientePasoSolicitado').val($(this).data('direction'));
        $.ajax({
            url: CONTEXT_ROOT + 'usuario/cesta/siguiente-paso',
            type: "POST",
            data: $('#compra-form').serialize(),
            success: function (fragment) {
                $('#carrito-container').html(fragment);
            }, complete: function () {
                hideLoader();
            }
        });

    });

    $(document).on('change', '#tipoEntrega', function () {
        $('#direcciones').prop('disabled', $(this).val() !== '2');
    });

    $(document).on('change', '#direcciones', function () {
        let detalle = $('#detalle-direccion');
        let val = $(this).val();
        if (val !== undefined && val !== '') {
            detalle.removeClass('d-none');
            let seleccion = $('option:selected', this);
            $('#direccion-nombre').text(seleccion.data('nombre'));
            $('#direccion-destinatario').text(seleccion.data('destinatario'));
            $('#direccion-texto').text(seleccion.data('texto'));

        } else {
            detalle.addClass('d-none');
        }
    });

    $(document).on('change', '#tarjetas', function() {
        let detalle = $('#detalle-tarjeta');
        let val = $(this).val();
        if (val !== undefined && val !== '') {
            detalle.removeClass('d-none');
            let seleccion = $('option:selected', this);
            $('#tarjeta-nombre').text(seleccion.data('nombre'));
            $('#tarjeta-numero').text(seleccion.data('numero'));
            $('#tarjeta-caducidad').text(seleccion.data('caducidad'));
        } else {
            detalle.addClass('d-none');
        }
    });
});
