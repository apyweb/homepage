$(function() {

    var setupFlash = function() {
        $(".flash").each(function() {
            var data_src = $(this).attr('data-swf');
            var data_height = $(this).attr('data-alto');
            var data_width = $(this).attr('data-ancho');
            $(this).html('');
            $(this).flash({src: data_src, height : data_height, width : data_width});
            $(this).show();
        });
    }
    
    $(setupFlash);
})(jQuery);