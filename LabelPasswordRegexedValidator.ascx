<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LabelPasswordRegexedValidator.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.LabelPasswordRegexedValidator" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ Register src="PasswordRegexed.ascx" tagname="PasswordRegexed" tagprefix="uc1" %>


<%@ Register Src="~/Validator2.ascx" TagPrefix="uc1" TagName="Validator" %>

<% #if(false) %>
<script src="http://localhost:12345/script/_web/jquery.js">

</script>
<script src="http://localhost:12345/script/_web/nilnul.js">

</script>

<% #endif %>


<cc1:KeyHidden ID="KeyHidden1" runat="server" />
<label runat="server" id="label">Password:</label>

<uc1:PasswordRegexed ID="PasswordRegexed1" runat="server" />
<uc1:Validator runat="server" ID="Validator1" />

<script>
	(function (
		key, password, validator
	) {
		//regex.addEventListener("valid", function () { validator.innerHTML = this.valid ? "<%=invalidMsg%>" : "" });

		var invalidMsg = "<%=invalidMsg%>";

		var validate = function () {

			validator.val(password.valid ? "" : invalidMsg);

		};

		var listenChildren= function () {

			//nilnul.appendEvents(
			//	password, "validChanged", password_validChanged
			//);
			nilnul.event.appendEvents(
				password, "changedReportable", password_changedReportable
			);

		};

		//var password_validChanged = function () {
		//	validate();
		//};
		var password_changedReportable = function () {
			validate();
			nilnul.event.fireAction(key.changedReportable);
		};

		var pub = function () {
			key.val = password.val;
			key.valid = validator.valid;
			key.password = password.val;
			key.regex = password.regex;
			key.invalidMsg = function (x) {
				if (typeof x === "undefined") {
					return invalidMsg;

				}
				invalidMsg = x;
				validate();

			};
		};

		
		var ini = function () {
			validate();
			listenChildren();
			pub();

		};

		ini();

	})(
		document.getElementById("<%=keyId%>")
		,
		document.getElementById("<%=PasswordRegexed1.keyId%>")
		,
		document.getElementById("<%=Validator1.ClientID%>")
	);

</script>
