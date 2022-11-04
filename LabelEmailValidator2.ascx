<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LabelEmailValidator2.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.LabelEmailValidator2" %>


<% #if(false) %>
<script src="http://localhost:12345/script/_web/jquery.js">

</script>
<script src="http://localhost:12345/script/_web/nilnul.js">

</script>

<% #endif %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>

<cc1:KeyHidden ID="KeyHidden1" runat="server" />

<label runat="server" id="label">
	<cc1:EnglishChinese3 ID="EnglishChinese1" runat="server">
		<asp:View ID="View1" runat="server">Email</asp:View>
		<asp:View ID="View2" runat="server">邮箱</asp:View>
	</cc1:EnglishChinese3>:</label>
<%@ Register Src="~/Email2.ascx" TagPrefix="uc1" TagName="Email" %>
<uc1:Email runat="server" ID="Email" />
<%@ Register Src="~/Validator2.ascx" TagPrefix="uc1" TagName="Validator" %>

<uc1:Validator runat="server" ID="Validator" />

<script>
	(function (
		key, email, validator
	) {
<%--		//regex.addEventListener("valid", function () { validator.innerHTML = this.valid ? "<%=invalidMsg%>" : "" });--%>

		//var key = ctrl;
		///todo:obsolete
		var
		listenChildren = function () {

				nilnul.event.appendEvents(
					email, "changedReportable", email_changedReportable
				);
				<%--compatible--%>
				nilnul.event.appendEvents(
					email, "validChanged", email_validChanged
				);
		},
		
		email_validChanged = function () {<%--compatible--%>
			validator.val((email.valid ? "" : "<%=invalidMsg%>"));
		},
		email_changedReportable = function () {
			validate();
			nilnul.event.fireAction(key.changedReportable);

		},


		validate = function () {
			validator.val((email.validStatus ? "" : "<%=invalidMsg%>"));

			//			email.valid ? validator.val(null) : validator.val("<%=invalidMsg%>");

		},


		pub = function () {
			key.valid = validator.valid;
			key.disable = email.disable;
			key.enable = email.enable;
			key.val = email.val;


		},

		ini = function () {
			validate();
			listenChildren();
			pub();


		};

		ini();



	})(
		document.getElementById("<%=ClientID%>")
		,
		document.getElementById("<%=Email.keyId%>")
		,
		document.getElementById("<%=Validator.ClientID%>")

	);

</script>
