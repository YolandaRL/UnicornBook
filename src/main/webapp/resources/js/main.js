jQuery(function () {

    $('[data-bs-toggle="popover"]').popover({trigger: "hover"});
    
    $('.date-picker').datepicker({
        dateFormat: "dd-mm-yy",
        autoSize: true,
        selectOtherMonths: true,
        showAnim: "slideDown",
        prevText: "Anterior",
        nextText: "Siguiente",
        dayNames: ["Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado"],
        dayNamesMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sá"],
        dayNamesShort: ["Dom", "Lun", "Mar", "Mie", "Jue", "Vie", "Sáb"],
        monthNames: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
        monthNamesShort: ["Ene", "Feb", "Mar", "Abr", "May", "Jun", "Jul", "Ago", "Sep", "Oct", "Nov", "Dic"]

    });

    $(document).on('submit', 'form', function () {
        showLoader();
    });

    $(document).on('click', '.trigger-data-picker', function () {
        $(this).closest('div').find('.date-picker').focus();
    });

    $('input').each(function () {
        if ($(this).val() === undefined) {
            $(this).val('');
        }
    });

    $(document).on('click', '#btn-toggle', function () {
        console.log($(this).css('transform'));
        let transform = 0;
        if ($(this).css('transform') !== 'matrix(6.12323e-17, 1, -1, 6.12323e-17, 0, 0)') {
            transform = 90;
        }
        $(this).animate(
            {deg: transform},
            {
                duration: 600,
                step: function (now) {
                    $(this).css({transform: 'rotate(' + now + 'deg)'});
                }
            }
        );
    });

    $(document).on('click', '[data-dismiss="modal"]', function () {
        $(this).closest('.modal').modal('hide');
    });

    $(document).on('click', '.cesta', function () {
        $('#cesta-simplificada').load(CONTEXT_ROOT + 'usuario/carrito/get');
    });
});

function showLoader() {
    $('#loader-container').addClass('fade-in').removeClass('fade-out');
}

function hideLoader() {
    $('#loader-container').addClass('fade-out').removeClass('fade-in');
}
