var ajax_escape = {
    init: function(event) {
        if (event != '/') {
            $("#ajax_escape").fadeOut(300,function() {
                $(this).load(event+" #refresh_content").fadeIn(300);
            });
        }
    }
}