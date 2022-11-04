<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DocumentMouseMove.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.movable_.DocumentMouseMove" %>
<%--
	this is copied from https://stackoverflow.com/questions/24050738/javascript-how-to-dynamically-move-div-by-clicking-and-dragging
	hasnot been reviwed, revised or tested.
	--%>
<script>

	var mousePosition;
	var offset = [0, 0];
	var div;
	var isDown = false;

	div = document.createElement("div");
	div.style.position = "absolute";
	div.style.left = "0px";
	div.style.top = "0px";
	div.style.width = "100px";
	div.style.height = "100px";
	div.style.background = "red";
	div.style.color = "blue";

	document.body.appendChild(div);

	div.addEventListener('mousedown', function (e) {
		isDown = true;
		offset = [
			div.offsetLeft - e.clientX,
			div.offsetTop - e.clientY
		];
	}, true);

	document.addEventListener(<%-- window.addEventListener('mouseup', mouseUp, false);
--%>
		'mouseup', function () {
		isDown = false;
	}, true);

	document.addEventListener(<%-- window.addEventListener('mousemove', divMove, true);
 --%>
		'mousemove', function (event) {
		event.preventDefault();
		if (isDown) {
			mousePosition = {

				x: event.clientX,
				y: event.clientY

			};
			div.style.left = (mousePosition.x + offset[0]) + 'px';
			div.style.top = (mousePosition.y + offset[1]) + 'px';
		}
	}, true);

</script>
