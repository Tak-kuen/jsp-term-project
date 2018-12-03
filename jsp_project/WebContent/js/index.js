/**
 * 
 */

$(document).ready(function() {
	$("#menu").click(function() {
		location.href="/jsp_project/mg/cafe/menuMain.do";
	});
	$("#updateProduct").click(function() {
		location.href="/jsp_project/mg/booklist.do?book_kind=all";
	});
	$("#orderedProduct").click(function() {
		location.href="/jsp_project/mg/orderList.do";
	});
	$("#qna").click(function() {
		location.href="/jsp_project/mg/managerMain.do";
	});
});