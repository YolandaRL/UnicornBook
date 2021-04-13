$(function () {
    configureFormContacto($('#tipoOperacionGlobal').val());

    $(document).on('change', '#tipoOperacionGlobal', function () {
        configureFormContacto($(this).val());
    });
});

function configureFormContacto(idTipoOperacion) {
    console.log(idTipoOperacion);
    let formConsulta = $('#formConsulta');
    let formEncargo = $('#formEncargo');

    if (idTipoOperacion === '1') {
        formConsulta.show();
        formEncargo.hide();
    } else if (idTipoOperacion === '2') {
        formConsulta.hide();
        formEncargo.show();
    } else {
        formConsulta.hide();
        formEncargo.hide();
    }
}
