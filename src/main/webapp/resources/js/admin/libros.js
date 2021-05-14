jQuery(function () {
    console.log($('input[type="file"][name="portada"]').val());

    $(document).on('click', '.btn-nueva-imagen', function () {
        $('input[type="file"][name="portada"]').click();
    });

    $(document).on('change', 'input[type="file"][name="portada"]', function (e) {
        let file = e.target.files;
        if (file) {
            $('.imagen-cargada', $('.contenedor-imagen')).attr('src', URL.createObjectURL(file[0]));

        }
    });
});
