jQuery(function () {
    $(document).on('click', '.btn-nueva-imagen', function () {
        $('input[type="file"][name="imagenForm.imagen"]').click();
    });

    $(document).on('change', 'input[type="file"][name="imagenForm.imagen"]', function (e) {
        let file = e.target.files;
        if (file) {
            $('.imagen-cargada', $('.contenedor-imagen')).attr('src', URL.createObjectURL(file[0]));

        }
    });
});
