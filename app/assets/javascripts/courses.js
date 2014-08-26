var course_actions = {
	reset: function(event){
		$(".reorder_units, .container_reorder_arrows").toggle();
		$("#container_units .panel_unit").each(function(index,el){
			$("#panel_unit_" + (index + 1)).after($("#exercise_order_" + (index + 2)));
		});
	},
	enabled_reorder: function(){
		$(".reorder_units, .container_reorder_arrows").toggle();
		$(".panel_title_lecture").css({marginLeft:31});
	},
	disabled_reorder: function(){
		$(".panel_title_lecture").css({marginLeft:0});
		course_actions.reset();
	},
	reorder: function(event){
		var $this = $(event.target);
		var position = $this.data('position');
		var direction = $this.hasClass('asc') ? "after":"before";
		var index = ($("#panel_unit_"+position).index())+1;
		if(direction=='before') $("#panel_unit_"+position).insertAfter(".panel_unit:nth-child("+(index+1)+")");
		else $("#panel_unit_"+position).insertBefore(".panel_unit:nth-child("+(index-1)+")");
		$("#container_units .panel_unit"+position).insertAfter(".panel_unit_"+position);
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