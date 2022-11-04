<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TextByRegex.ascx.cs" Inherits="nilnul.web.ctrl._web.uc.TextByRegex" %>



<%@ Register Assembly="nilnul.web.script.webctrl(130116" Namespace="nilnul.web.script.webctrl"
	TagPrefix="cc1" %>

<%@ Register Src="Validator.ascx" TagName="Validator" TagPrefix="uc3" %>
<%@ Register Src="Text.ascx" TagName="Text" TagPrefix="uc5" %>

<cc1:CommonScriptsControl ID="CommonScriptsControl1" runat="server">
</cc1:CommonScriptsControl>

<asp:Panel ID="Panel1" runat="server">
	<asp:Label ID="Label1" runat="server" Text="Key"></asp:Label>
	<uc5:Text ID="Text1" runat="server" regex="" />
	<uc3:Validator ID="Validator1" runat="server" />
	
	<script type="text/ecmascript">
		(function (element, text, validator) {
			var regex = RegExp("<%=regex%>"),

			invalidMsg = "<%=invalidMsg%>",

			listenEvents = function () {
				text.changedEvt = function () {
					handleTextChange();
				};
			},

			handleTextChange = function () {
				if (valid() && !validator.valid()) {
					validator.msgSetStrEmpty();
					nilnul.fireAction(element.validEvt);

				} else if (!valid() && validator.valid()) {
					validator.msgSetStr(invalidMsg);
					nilnul.fireAction(element.validEvt);
				}
				nilnul.fireAction(element.changedEvt);
			},
			 valid = function (value) {
			 	if (typeof value == "undefined") {
			 		return validGet();
			 	}
			 },
			 validGet = function () {
			 	return regex.test(text.value);

			 },
			 init = function () {
			 	handleTextChange();
			 	listenEvents();
			 };

			init();

			element.valid = function () {
				return validator.valid();
			};

			element.text = function () {
				return text.value;
			};
			element.disable = function () {
				text.disabled = true;
			};
			element.enable = function () {
				text.disabled = false
			};

		})(
		document.getElementById("<%=clientId%>")
		,
		document.getElementById("<%=textClientId%>")
		,
		document.getElementById("<%=validatorClientId%>")
	);

</script>
</asp:Panel>
