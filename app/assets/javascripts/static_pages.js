var photos = [
    "http://wallfinest.com/wp-content/uploads/2014/06/coffee-macro-photography-live-wallpaper.jpg",
    "http://www.estudiourquiza.com/temp/6c713dcb934492e3aa7d49ffc9f4237f-4QUESOScopy.jpg",
    "http://blog.doohelp.com/blogimages/2014/04/cityscape-Photography-Bokeh-Wallpaper-Wide.jpg",
    "http://www.dazzlingwallpaper.com/image/1396540683_beautiful_cycle_photography.jpg"
];

var static_pages = {
    slideshow: function() {
        // $("#home_slide_show").backstretch(photos, { duration: 5000, fade: 750 });
        $.backstretch(photos, {
            duration: 5000,
            fade: 750
        });
    }
}