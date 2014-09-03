// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-migrate-min
//= require jquery_ujs
//= require turbolinks
//= require jquery.Jcrop
//= require bootstrap-wysihtml5
//= require bootstrap-wysihtml5/locales/es-ES
//= require bootstrap
//= require_tree .

(function($) {

    $.extend(true, jQuery.fn, {
        imagePreview: function(options) {
            var defaults = {};
            if (options) $.extend(true, defaults, options);
            $.each(this, function() {
                var $this = $(this);
                $this.bind('change', function(evt) {
                    $('#image_url').attr('src', '');
                    var files = evt.target.files;
                    if (files.length == 0) {
                        $("#image_url").attr('src', "/assets/default.png");
                    } else {
                        for (var i = 0, f; f = files[i]; i++) {
                            if (!f.type.match('image.*')) continue;
                            var reader = new FileReader();
                            reader.onload = (function(theFile) {
                                return function(e) {
                                    $("#image_url").attr('src', e.target.result);
                                };
                            })(f);
                            reader.readAsDataURL(f);
                        }
                    }
                });
            });
        }
    });

})(jQuery);

// (function($) {

//     $.fn.preview = function(){
//         var opts = $.extend(true, $.preview.defaults, options);
//     }

// }(jQuery));

function plugins() {
    $("#user_photo").imagePreview();
    $(".tablesorter").tablesorter();
    $('.wysihtml5').each(function(index, el) {
        $(this).wysihtml5({
            "font-styles": false,
            "emphasis": true,
            "lists": true,
            "html": false,
            "link": true,
            "image": false,
            "color": true,
            "locale": "es-ES"
        });
    });

    $.address.init(function(event) {
        // ajax_escape.init(event.value);
        $('.remote').address(function() {
            return $(this).attr('href').replace(location.pathname, '');
        });
    }).change(function(event) {
        ajax_escape.init(event.value);
    });
}

$(document).ready(plugins);
$(document).on('page:load', plugins);