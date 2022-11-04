<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PasswordRegex.ascx.cs" Inherits="nilnul.web.ctrl.PasswordRegex" %>
<%@ Register Assembly="nilnul.net.script(controls120526.2119" Namespace="nilnul.net.script" TagPrefix="cc1" %>

<%@ Register src="Password.ascx" tagname="Password" tagprefix="uc1" %>
<cc1:CommonScriptsControl ID="CommonScriptsControl1" runat="server"></cc1:CommonScriptsControl>

<uc1:Password ID="Password1" runat="server" />
<input type="hidden" id="element" runat="server" />
<script type="text/ecmascript">

	(function (element, password) {
		var text = password;

		var regex = /^/g,
		

		//validEvent = new CustomEvent("valid"),


		listenEvents = function () {
			text.changedEvt = function () {
				handleTextChange();
			};
		},

		handleTextChange = function () {
			var valid = valid();

			if (valid !== element.valid) {
				
				element.valid =_valid;
				nilnul.fireAction(element.validChangeEvt);	//validChangeEvt will know current valid status.
			}

			//this.dispatchEvent(validEvent);

			//} else if (!_valid && oldValid) {
			//	oldValid = _valid;
			//	element.valid = _valid;
			//	nilnul.fireAction(element.validChangeEvt);
			//	//this.dispatchEvent(validEvent);

			//}
			nilnul.fireAction(element.changedEvt);
		},

		 valid = function () {
		 	return regex.test(text.value);

		 },
		 init = function () {


		 	handleTextChange();
		 	element.handleTextChange = handleTextChange;

		 	listenEvents();	//attachEvent to Text
		 };






		init();


	})(
document.getElementById("<%=element.ClientID%>")
,
document.getElementById("<%=Password1.ClientID%>")

);







</script>
