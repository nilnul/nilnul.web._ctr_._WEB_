<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LabelEmailRequiredValidator2.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.LabelEmailRequiredValidator2" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.lang" TagPrefix="cc2" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ Register Src="~/Validator2.ascx" TagPrefix="uc1" TagName="Validator" %>
<%@ Register Src="~/EmailRequired2.ascx" TagPrefix="uc1" TagName="Email" %>


<% #if(false) %>
<script src="http://localhost:12345/script/_web/jquery.js">

</script>
<script src="http://localhost:12345/script/_web/nilnul.js">

</script>

<% #endif %>

<cc1:KeyHidden ID="KeyHidden1" runat="server" />

<label runat="server" id="label">

	<cc2:EnZh_perRequest ID="EnglishChinese1" runat="server">
		<asp:View ID="View1" runat="server">Email</asp:View>
		<asp:View ID="View2" runat="server">电子邮箱</asp:View>
	</cc2:EnZh_perRequest>:
</label>
<uc1:Email runat="server" ID="Email" />
<uc1:Validator runat="server" ID="Validator" />

<script>
	(function (
		key, email, validator,label
	) {
<%--		//regex.addEventListener("valid", function () { validator.innerHTML = this.valid ? "<%=invalidMsg%>" : "" });--%>

		//var key = ctrl;
		///todo:obsolete
		var
		listenChildren = function () {


				nilnul.event.appendEvents(
					email, "changedReportable", email_changedReportable
				);

				nilnul.event.appendEvents(
					email, "validityChanged", email_validityChanged
				);
		},
		email_validityChanged = function () {
			validator.val((email.valid ? "" : "<%=invalidMsg%>"));
		},
		email_changedReportable = function () {
			validate();
			nilnul.event.fireAction(key.changedReportable);

		},

		email_changed = function () { },



		validate = function () {
			validator.val((email.validStatus ? "" : "<%=invalidMsg%>"));

			//			email.valid ? validator.val(null) : validator.val("<%=invalidMsg%>");

		},

		


		pub = function () {
			key.valid = validator.valid;

			key.disable = email.disable;
			key.enable = email.enable;
			key.val = email.val;
			key.focus = email.focus;
			key.label = function (x) {
				if (typeof (x) === "undefined") { return label.textContent; }
				else {
					label.textContent = x;
				}
			};


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
		,
		document.getElementById("<%=label.ClientID%>")

	);

</script>
