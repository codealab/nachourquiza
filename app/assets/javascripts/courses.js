var course_actions = {
	keyUp: function(event){
		var $this = $(event.target);
		var id = $this.data("id");
		var position = $this.val();
		if(position==parseInt($this.val())) $("#panel_unit_"+id).insertBefore(".panel_unit:nth-child("+position+")");
		$(".input_position").each(function(index, el) {
			$(this).attr("placeholder",(index+1)).val("");
		});
	},
	reset: function(event){
		$(".reorder_units, .container_reorder_arrows").toggle();
		$("#container_units .panel_unit").each(function(index,el){
			$("#panel_unit_" + index).insertAfter($("#panel_unit_" + (index + 1)));
		});
	},
	enabled_reorder: function(){
		$(".reorder_units, .container_reorder_arrows").toggle();
		$(".panel_title_lecture").css({marginLeft:81});
	},
	disabled_reorder: function(){
		$(".panel_title_lecture").css({marginLeft:0});
		course_actions.reset();
	},
	reorder: function(event){
		var $this = $(event.target);
		var id = $this.data('id');
		var direction = $this.hasClass('asc') ? "after":"before";
		var index = ($("#container_units #panel_unit_"+id).index())+1;
		if(direction=='before') $("#panel_unit_"+id).insertAfter(".panel_unit:nth-child("+(index+1)+")");
		else $("#panel_unit_"+id).insertBefore(".panel_unit:nth-child("+(index-1)+")");
	},
	save: function(event){
		var ids = [];
		var course_id = $("#container_units").data("course");
		$("#container_units .panel_unit").each(function(index, el) {
			var id = $(this).data("position");
			ids.push(id);
		});
		$.ajax({
			url: '/courses/positions/'+course_id,
			data: { positions: ids },
		}).done(function() {
			window.location.reload();
		});
	},
	loadUnit: function(event){
		var $this = $(event.target);
		var unit = $this.data('unit');
        var open = $this.data("open");
        if(open==true){
            $this.data("open",false);
            $("#unit_detail_"+unit).load("/courses/accordeon/"+unit+" #accordeon_unit_content");
            setTimeout(function(){
            	$("#accordeon_unit_content .tablesorter").tablesorter();
			    $('#accordeon_unit_content .wysihtml5').wysihtml5({
			        "font-styles": false,
			        "emphasis": true,
			        "lists": true,
			        "html": false,
			        "link": true,
			        "image": false,
			        "color": true,
			        "locale": "es-ES"
			    });
            },1000);
        }
	},
	load_video: function(event){
		var $this = $(event.target);
		var unit = $this.data("unit");
		var video_id = $this.val();
		$("#video_url_"+unit).attr("src",("//www.youtube.com/embed/"+video_id));
	},
	open_modal_video: function(event){
		var lecture_name = event.target.dataset.lecture;
		var video_url = event.target.dataset.video;
		$("#video_open_modal_name").text(lecture_name);
		$("#container_open_video_modal").html('<iframe width="100%" height="315" src="//www.youtube.com/embed/'+video_url+'" frameborder="0" allowfullscreen></iframe>');
	}
}