var deliveries_actions = {
    handleFileSelect: function(event) {
        var files = event.target.files;
        var output = [];
        $("#container_deliveries").load('/deliveries/new?attachments='+files.length);
    }
}