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
	}
}