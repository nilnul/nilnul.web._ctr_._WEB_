<%-----------------------------------------------
	this will generate a textbox on the client side. this textbox is different from html textbox in that it can catch the changes during the editing period while the html textbox can only catch the changes when blured.
	this can be used as a user ctrl. 
	This can also be placed on an blank .aspx file and then loaded to the client as a client control.
	The .aspx file can get the id from the client side and apply the id to this control. this control's clientmode is set as default. and the generated control id will be the same as request but the sub-controls' id will be prefixed by the given id.

---------------------------------------%>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Text0.ascx.cs" Inherits="nilnul.web.ctrl._web.Text0" %>

<%@ Register Assembly="nilnul.web.script.webctrl(130116" Namespace="nilnul.web.script.webctrl"
	TagPrefix="cc1" %>


<cc1:CommonScriptsControl ID="CommonScriptsControl1" runat="server">
</cc1:CommonScriptsControl>
<input ID="text" type="text" runat="server"	
	 onpropertychange="this.propertychange();" onkeyup="this.keyup()" onchange="this._determineChange()"
	onmouseover="this.mouseover()"    oninput="this._determineChange()"  />
<%--<asp:TextBox ID="text" runat="server" onpropertychange="this.propertychange();" onkeyup="this.keyup()" onchange="this._determineChange()"
	onmouseover="this.mouseover"  oninput="this._determineChange()" onclick="this._determineChange()" ></asp:TextBox>
--%>

<script type="text/ecmascript">

	(function (element, text) {

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

		element._determineChange = _determineChange;

		element.fireChange = function () {
			window.nilnul.fireAction(element.changedEvt);

		};

		text.mouseover = function () {
			element.focus();
		}


		element.init = function () {
			oldVal = text.value;
			//handle child evets
			//listen evets
		};

		element.init();



	})(

		document.getElementById("<%=textId%>")
		,

		document.getElementById("<%=textId%>")



	);







</script>
