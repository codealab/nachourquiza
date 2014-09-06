//Initialize functions for attachments actions

function handleDragOver(evt) {
    evt.stopPropagation();
    evt.preventDefault();
    evt.dataTransfer.dropEffect = 'copy'; // Explicitly show this is a copy.
}

var attachments = {
    //Validate if browser is compatible
    valid_browser: function(event) {
        if (window.File && window.FileReader && window.FileList && window.Blob) {
            return true;
        } else {
            //active modal if the browser isnt' compatible
            $("#attachment_error").modal("show");
            return false;
        }
    },
    handleFileSelect: function(event) {
        var files = event.target.files; // FileList object
        // files is a FileList of File objects. List some properties.
        var output = [];
        for (var i = 0, f; f = files[i]; i++) {
            output.push('<li><strong>', escape(f.name), '</strong> (', f.type || 'n/a', ') - ',
                f.size, ' bytes, last modified: ',
                f.lastModifiedDate.toLocaleDateString(), '</li>');
        }
        document.getElementById('list_selected_files').innerHTML = '<ul>' + output.join('') + '</ul>';
    }
}