jQuery(function () {

    $(document).on("click", '.dropdown-menu-advanced-search .dropdown-item', function () {
        showLoader();
        let checkbox = $('input', $(this).closest('div'));
        let icon = $('em', $(this).closest('div'));
        if ($(this).hasClass('active')) {
            $(this).removeClass('active');
            checkbox.prop('checked', false);
            icon.addClass('d-none');
        } else {
            $(this).addClass('active');
            checkbox.prop('checked', true);
            icon.removeClass('d-none');
        }
        updateInfoFilter($(this).closest('.dropdown-advanced-search'));
        updateValuesInputs();
        submitFilter();
    });

    $(document).on('click', '.seleccion-global', function () {
        showLoader();
        let context = $(this).closest('.dropdown-advanced-search');
        let activos = $('.dropdown-item.active', context);
        let inputs = $('input', context);
        if ((activos.length !== undefined && activos.length > 0)
            && $('.dropdown-item', context).length === activos.length) {
            $(this).text('TODO');
            activos.removeClass('active');
            $('button', context).removeClass('active');
            inputs.prop('checked', false);
        } else {
            $(this).text('BORRAR');
            $('.dropdown-item', context).each(function () {
                $(this).addClass('active');
                $('button', context).addClass('active');
            });
            inputs.prop('checked', true);
        }
        updateInfoFilter(context);
        submitFilter();
    });
});

function updateInfoFilter(context) {
    let totalElements = $('.active', context).length;
    let names = [];
    $('.active .name', context).each(function () {
        names.push($(this).text());
    });

    $('.countSelections', context).text(totalElements);
    $('.nameSelections', context).text(names.join(", "));

    let button = $('.dropdown-toggle-advanced-search', context);
    if (totalElements !== undefined && totalElements > 0) {
        button.addClass('items-selected');
    } else {
        button.removeClass('items-selected');
    }
}

function updateValuesInputs() {
    $('.dropdown-advanced-search').each(function () {
        let values = [];
        $('input.simulate-value', this).each(function () {
            if ($(this).is(':checked')) {
                values.push($(this).val());
            }
        });
        if (values.length > 0) {
            $('.form-value', this).prop('disabled', false);
            $('.form-value', this).val(values.join(','));
        } else {
            $('.form-value', this).prop('disabled', true);
        }
    });
}

function submitFilter() {
    $('#advanced-search').submit();
    /*$.ajax({
        url: CONTEXT_ROOT + 'busqueda-avanzada',
        headers: {
            'X-CSRF-Token': $('[name*=_csrf]').val()
        },
        type: "GET",
        data: $('#advanced-search').serialize(),
        success: function (fragment) {
            $('#resultados').html(fragment);
        }, complete: function () {
            hideLoader();
        }
    });*/
}
