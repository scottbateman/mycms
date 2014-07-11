$(document).ready(function()
{
    $("#types").change(function(){
    	var type=$(this).children('option:selected').val();
    	if(type!=""){
    		$(".appended").remove();
    		$(".type_result").append('<div class="appended">{include "templates/snippets/publication_teaser_list.tpl" publication=$publications group=true type='+type+'}</div>');
    		$(".year_group").hide();
    	}else{
    		$(".appended").remove();
    		$(".year_group").show();
    	}

	});
});