var ajax_escape = {
    init: function(event) {
        if (event != '/') {
            $("#ajax_escape").fadeOut(function() {
                $(this).load(event + " #refresh_content").fadeIn();
            });
        }
    }
}