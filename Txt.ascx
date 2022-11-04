<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Txt.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Txt" %>
<%--<%@ OutputCache Duration="3600000" VaryByParam="none" %>--%>
<%-----------------------------------------------
	this will generate a textbox on the client side. this textbox is different from html textbox in that it can catch the changes during the editing period while the html textbox can only catch the changes when blured.
	this can be used as a user ctrl. 
	This can also be placed on an blank .aspx file and then loaded to the client as a client control.
	The .aspx file can get the id from the client side and apply the id to this control. this control's clientmode is set as default. and the generated control id will be the same as request but the sub-controls' id will be prefixed by the given id.

---------------------------------------%>



<input

	id="<%=ClientID %>"
	type="text"
	onpropertychange="this.propertychange();"
	onkeyup="this.keyup()"
	onchange="this._determineChange()"
	oninput="this._determineChange()" />

<%--	onmouseover="this.mouseover()"--%>

<%--<asp:TextBox ID="text" runat="server" onpropertychange="this.propertychange();" onkeyup="this.keyup()" onchange="this._determineChange()"
	onmouseover="this.mouseover"  oninput="this._determineChange()" onclick="this._determineChange()" ></asp:TextBox>
--%>

<script type="text/ecmascript">
	(function ( text) {
		var oldVal = text.value;

		text.propertychange = function (event) {
			if (event.propertyName.toLowerCase() == "value") {
				_determineChange();
			}
		};

		text.keyup = function () {
			_determineChange();
		};


		var _determineChange = function () {
			if (text.value != oldVal) {
				oldVal = text.value;
				changed();
			}
		};

		var changed = function () {
			nilnul.fireAction(text.changed);
		};

		var pub = function () {

			text.val = function (x) {
				if (typeof x == "undefined") {
					return text.value;
				}

				text.value = x;
				_determineChange();

			};

			text._determineChange = _determineChange;

			//text.onmouseover = function () {
			//	element.focus();
			//}

			//	text.focus=




		};

		var ini = function () {
			
			pub();

		};
		ini();
	})(
		document.getElementById("<%=ClientID%>")
	);







</script>
