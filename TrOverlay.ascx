<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TrOverlay.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.TrOverlay" %>

<style>
	#divOverlay {
		display: none;
		background-color: Silver;
		text-align: center;
		position: absolute;
		z-index: 10000;
		opacity: 0.5;
	}
</style>

<script>
	;var $divOverlay = $('#divOverlay');
	$('#example').on("mouseover", "tbody > tr", function () {
		var bottomWidth = $(this).css('width');
		var bottomHeight = $(this).css('height');
		var rowPos = $(this).position();
		bottomTop = rowPos.top;
		bottomLeft = rowPos.left;
		$divOverlay.css({
			position: 'absolute',
			top: bottomTop,
			left: bottomLeft,
			width: '100%',
			height: bottomHeight
		});
		$divOverlay.show();
	});
	//
	$divOverlay.mouseleave(function () {
		$divOverlay.hide();
	});



</script>

