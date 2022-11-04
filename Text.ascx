<%-----------------------------------------------

	this will generate a textbox on the client side. this textbox is different from html textbox in that it can catch the changes during the editing period while the html textbox can only catch the changes when blured.
	this can be used as a user ctrl. 
	This can also be placed on an blank .aspx file and then loaded to the client as a client control.
	The .aspx file can get the id from the client side and apply the id to this control. this control's clientmode is set as default. and the generated control id will be the same as request but the sub-controls' id will be prefixed by the given id.

---------------------------------------%>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Text.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Text" %>



<input id="text" type="text" runat="server"
	onpropertychange="this.propertychange();" onkeyup="this.keyup()" onchange="this._determineChange()"
	oninput="this._determineChange()" />
<%--	onmouseover="this.mouseover()"--%>

<%--<asp:TextBox ID="text" runat="server" onpropertychange="this.propertychange();" onkeyup="this.keyup()" onchange="this._determineChange()"
	onmouseover="this.mouseover"  oninput="this._determineChange()" onclick="this._determineChange()" ></asp:TextBox>
--%>

<script type="text/ecmascript">
	(function (element, key, text) {
		var oldVal = text.value;
		element.propertychange = function () {
			if (event.propertyName.toLowerCase() == "value") {
				_determineChange();
			}
		};

		element.keyup = function () {
			_determineChange();
		};


		var _determineChange = function () {
			if (element.value != oldVal) {
				oldVal = element.value;
				element.fireChange();
			}
		};


		element.fireChange = function () {
			window.nilnul.fireAction(element.changedEvt);

		};


		init = function () {
			oldVal = text.value;

			text.mouseover = function () {
				element.focus();
			}
			element._determineChange = _determineChange;

			element.text = function () { return text.value };

			element.val = function (x) {
				if (typeof x == "undefined") {

					return text.value;

				}

				text.value = x;
				_determineChange();

			};


			//handle child evets
			//listen evets
		};

		init();



	})(

		document.getElementById("<%=keyId%>")
		,
		document.getElementById("<%=keyId%>")
		,

		document.getElementById("<%=textId%>")



	);







</script>
