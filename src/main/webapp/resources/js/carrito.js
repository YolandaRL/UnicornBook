jQuery(function () {

    $(document).on('click', '.navigation-prevent', function (E) {
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
        location.href = CONTEXT_ROOT + 'usuario/carrito/update/' + $('option:selected', context).data('id-libro') + '/' + context.val();
    });

    $(document).on('click', '.avanzar-formulario', function () {
        let alert = $('.alert-not-null', $(this).closest('.tab-pane'));
        alert.hide();

        if ($(this).data('prev-action') === 'validate') {
            let input = $('input[name="'+ $(this).data('not-null') +'"]').val();
            if (input === undefined || input === '') {
                alert.show();
                return;
            }
        }

        $($(this).data('direction')).tab('show');
    });

    $(document).on('change', '#direcciones', function() {
        $('.detalle-direcciones').addClass('d-none');
        $($('option:selected', this).data('id')).removeClass('d-none');
        $('input[name="idDireccion"]').val($('option:selected', this).val());
    });

    $(document).on('change', '#tarjetas', function() {
        $('input[name="idTarjeta"]').val($('option:selected', this).val());
    });

    $(document).on('shown.bs.tab', function (e) {
        $('select.actualizar-carrito').prop('disabled', false).css({background: '#FFFFFF'});
        $('.cesta-eliminar-libro').show();

        if($(e.target).data('bs-target') === '#confirmacion') {
            $('#resumen-direccion').html($('#direccion-' + $('input[name="idDireccion"]').val()).html());
            $('#resumen-pago').html($('option:selected', '#tarjetas').text());
            $('#resumen-libros').html($('#libros').html());
            $('select.actualizar-carrito').prop('disabled', true).css({background: '#E9ECEF'});
            $('.cesta-eliminar-libro').hide();
        }
    });
});
