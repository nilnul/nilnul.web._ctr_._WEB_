<%@ Control Language="C#"  %>
<%--
	like the pane being dragged out of the flat split panes and float into a higher z-index.
--%>
<div class="container"></div>
<script>

	var html = '<input type="text" value="fooo"></input>';

	$('<div></div>').html(html)
		.addClass('moment-dialog')
		.appendTo('.container')
		.dialog({
			title: 'test',
			closeText: '<i class="fa fa-times"></i>',
			close: function () {
				$(this).remove();
			},
			open: function (event, ui) {

				console.log('Value is: ' + $(this).find('input').val());

			},
			modal: true,
			width: 200,
			draggable: true,
			resizable: true
		});
</script>