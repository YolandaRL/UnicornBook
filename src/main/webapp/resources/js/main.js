jQuery(function () {
    $(document).on('input', 'input[type="number"]', function (e) {
        let max = $(this).attr('max');
        e.target.value = e.target.value.replace('e', '');
        e.target.value = e.target.value.replace(/[^\dA-Z]/g, '');

        if ($(this).val() > parseInt(max)) {
            $(this).val($(this).val().replace(/.$/, ''));
        }
    });

    $('img').each(function () {
        if (!this.complete
            || typeof this.naturalWidth == "undefined"
            || this.naturalWidth === 0) {
            this.src = "/resources/images/default-image.png";
        }
    });

    $(document).on('click', '.evt-loader, a.page-link', function () {
        showLoader();
    });

    $(document).on('click', '.status-sub-menu-btn', function () {
        let icon = $('.status-sub-menu-icon', this);
        if (icon.hasClass('fa-angle-down')) {
            icon.removeClass('fa-angle-down').addClass('fa-angle-up');
        } else {
            icon.removeClass('fa-angle-up').addClass('fa-angle-down');
        }
    });
    /*
    if ($(window).innerHeight() >= $(document).innerHeight()) {
        $('#footer').addClass('fixed-bottom');
    } else {
        $('#footer').removeClass('fixed-bottom');
    }

    window.addEventListener('resize', function(event){
        if ($(window).innerHeight() >= $(document).innerHeight()) {
            $('#footer').addClass('fixed-bottom');
        } else {
            $('#footer').removeClass('fixed-bottom');
        }
    });
    */

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
/*
    $(document).on('show.bs.offcanvas', function () {
        $('body').css('overflow', 'hidden');
    });

    $(document).on('hide.bs.offcanvas', function () {
        $('body').css('overflow-y', 'scroll');
    });*/

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

    $(document).on('click', '.puntuacion-form', function () {
        let container = $(this).closest('div');
        let puntuacion = $(this).data('puntuacion');
        $('.computo-puntuacion', container).val(puntuacion);

        let stars = $('.puntuacion-form', container).removeClass('fa').addClass('far');
        for (let i = 0; i < puntuacion; i++) {
            $(stars.get(i)).removeClass('far').addClass('fa');
        }
    });

    $(document).on('click', '.generic-eliminar', function () {
        let modal = $('#modalEliminar');
        $('.btn-confirmar-eliminacion', modal).attr('href', $(this).data('action'));
        modal.modal('show');
    });
});

function showLoader() {
    $('#loader-container').addClass('fade-in').removeClass('fade-out');
}

function hideLoader() {
    $('#loader-container').addClass('fade-out').removeClass('fade-in');
}
