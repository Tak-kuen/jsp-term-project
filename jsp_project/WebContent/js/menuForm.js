/**
 * 
 */
$(document).ready(function() {
	$("#coffee").click(function(){
		$(".coffee").show();
		$(".ade").hide();
		$(".ice").hide();
	});
	$("#ade").click(function(){
		$(".coffee").hide();
		$(".ade").show();
		$(".ice").hide();
	});
	$("#ice").click(function(){
		$(".coffee").hide();
		$(".ade").hide();
		$(".ice").show();
	});
	var coffee=$('.coffee');
	var ade=$('.ade');
	var ice=$('.ice');
	
	coffee.click(function() {
		var tg=$(this);
		var img=tg.find('> .items:eq(0) > img');
		var name=tg.find('> .items:eq(1)');
		var price=tg.find('> .items:eq(2)');
		$('#nameText').val(name.text());
		$('#priceText').val(price.text());
		$('#menuImage > .menuRight').empty();
		$('#menuImage > .menuRight').append('<img src="' +img.attr("src") + '"/>');
	});
	ade.click(function() {
		var tg=$(this);
		var img=tg.find('> .items:eq(0) > img');
		var name=tg.find('> .items:eq(1)');
		var price=tg.find('> .items:eq(2)');
		$('#nameText').val(name.text());
		$('#priceText').val(price.text());
		$('#menuImage > .menuRight').empty();
		$('#menuImage > .menuRight').append('<img src="' +img.attr("src") + '"/>');
	});
	ice.click(function() {
		var tg=$(this);
		var img=tg.find('> .items:eq(0) > img');
		var name=tg.find('> .items:eq(1)');
		var price=tg.find('> .items:eq(2)');
		$('#nameText').val(name.text());
		$('#priceText').val(price.text());
		$('#menuImage > .menuRight').empty();
		$('#menuImage > .menuRight').append('<img src="' +img.attr("src") + '"/>');
	});
});
