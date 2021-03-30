jQuery(function () {
    //$('.datepicker').datepicker();

    $(document).on('click','#btn-toggle', function () {
        console.log($(this).css('transform'));
        let transform = 0;
        if ($(this).css('transform') !== 'matrix(6.12323e-17, 1, -1, 6.12323e-17, 0, 0)') {
            transform = 90;
        }
        $(this).animate(
            { deg: transform },
            {
                duration: 600,
                step: function(now) {
                    $(this).css({ transform: 'rotate(' + now + 'deg)' });
                }
            }
        );
    });
});
