/**
 * 매니저 메인화면 버튼 핸들링
 */
$(document).ready(function() {
	var coffee=$('.coffee');
	var ade=$('.ade');
	var ice=$('.ice');
	var count=1;
	coffee.click(function() {
		var tg=$(this);
		var name=tg.find('> .items:eq(1)');
		var price=tg.find('> .items:eq(2)');
		$('.paylists').append('<div class="name"><span class="order">'+count+'</span><span class="order">'+name.text()+'</span><span class="order">' +price.text()+'</span></div>');
		count++;
	});
	ade.click(function() {
		var tg=$(this);
		var name=tg.find('> .items:eq(1)');
		var price=tg.find('> .items:eq(2)');
		$('.paylists').append('<div class="name"><span class="order">'+count+'</span><span class="order">'+name.text()+'</span><span class="order">' +price.text()+'</span></div>');
		count++;
	});
	ice.click(function() {
		var tg=$(this);
		var name=tg.find('> .items:eq(1)');
		var price=tg.find('> .items:eq(2)');
		$('.paylists').append('<div class="name"><span class="order">'+count+'</span><span class="order">'+name.text()+'</span><span class="order">' +price.text()+'</span></div>');
		count++;
	});
	$('#orderReset').click(function() {
		count=1;
		$('.paylists').empty();
		
	});
});