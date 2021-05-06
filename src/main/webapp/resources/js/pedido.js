jQuery(function () {
    $(document).on('click', '.btn-detalle-pedido', function () {
        let detallePedido = $('#' + $(this).data('id'));
        let icon = $('em', $(this));
        if (icon.hasClass('fa-angle-down')) {
            icon.removeClass('fa-angle-down').addClass('fa-angle-up');
            detallePedido.fadeIn(500);
        } else {
            icon.removeClass('fa-angle-up').addClass('fa-angle-down');
            detallePedido.hide();
        }
    });
});
