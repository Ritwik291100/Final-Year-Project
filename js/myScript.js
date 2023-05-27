$(document).ready(function(){
    $("#itmname").keyup(function(){
        $.get("../Source/item.php", {iname: $(this).val()}, function(data){
        	$("datalist").empty();
        	$("datalist").html(data);
        });
    });