/**
 * 
 */

layui.use('element', function() {
	var element = layui.element();
});
layui.use('form', function() {
	var form = layui.form();

});
$("#cancel").click(function() {
	$('#myModal').modal('hide');
})
$("#right").click(function() {
	$('#myModal').modal('hide');
})