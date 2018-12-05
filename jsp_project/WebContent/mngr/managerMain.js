/**
 * 매니저 메인화면 버튼 핸들링
 */
$(document).ready(function() {
	var coffee=$('.coffee');
	var ade=$('.ade');
	var ice=$('.ice');
	
	coffee.click(function() {
		var tg=$(this);
		var name=tg.find('> .items:eq(1)');
		var price=tg.find('> .items:eq(2)');
		$('.paylists').append('<div class="name">'+name.text()+"&nbsp;&nbsp;" +price.text()+'</div>');
	});
	ade.click(function() {
		var tg=$(this);
		var name=tg.find('> .items:eq(1)');
		var price=tg.find('> .items:eq(2)');
		$('.paylists').append('<div class="name">'+name.text()+"&nbsp;&nbsp;" +price.text()+'</div>');
	});
	ice.click(function() {
		var tg=$(this);
		var name=tg.find('> .items:eq(1)');
		var price=tg.find('> .items:eq(2)');
		$('.paylists').append('<div class="name">'+name.text()+"&nbsp;&nbsp;" +price.text()+'</div>');
	});
});