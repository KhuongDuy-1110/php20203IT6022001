var img;
function Open(id){
	
	//check img not null
	
	img = $('#img_inventory'+id).attr('src')
	
	if(img){
		//set src for tag img with id="img_preview" in preview
		
		$('#img_preview').attr('src',img);

	}
	var namea = $('#name').val();
	
	$('#name_product').text(namea);
	
	//show preview
	$("#preview").toggle();
}

function GoBack(){
	//hide preview
	img = '';
	$('#img_preview').attr('src',img);
	$("#preview").toggle();
}
