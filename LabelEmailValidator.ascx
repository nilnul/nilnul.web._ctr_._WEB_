<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LabelEmailValidator.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.LabelEmailValidator" %>

<%@ Register Src="~/Validator.ascx" TagPrefix="uc1" TagName="Validator" %>
<%@ Register Src="~/Email.ascx" TagPrefix="uc1" TagName="Email" %>


<% #if(false) %>
	<script src="http://localhost:12345/script/_web/jquery.js">

	</script>
	<script src="http://localhost:12345/script/_web/nilnul.js">

	</script>
	
<% #endif %>


<label runat="server" id="label">Email:</label>
<uc1:Email runat="server" ID="Email" />
<uc1:Validator runat="server" id="Validator" />
<input id="key" type="hidden" runat="server" />

<label id="<%=ClientID %>"></label>
<script>
	(function (
		key,email,validator,element
	) {
		//regex.addEventListener("valid", function () { validator.innerHTML = this.valid ? "<%=invalidMsg%>" : "" });

		//var key = ctrl;
		key = element;
		var handleEmailValidChange = function () {
			validator.val((email.valid() ? "" : "<%=invalidMsg%>"));
		};

	
		var init = function () {

			handleEmailValidChange();

			nilnul.appendEvents(
				email, "validChangeEvt", handleEmailValidChange
			);

			key.valid = validator.valid;

			key.disable = email.disable;
			key.enable = email.enable;
			key.val = email.val;


		};

		init();
		

		



	})(
		document.getElementById("<%=key.ClientID%>")
		,
		document.getElementById("<%=Email.keyId%>")
		,
		document.getElementById("<%=Validator.clientId%>")
		,
		document.getElementById("<%=ClientID%>")

	);

</script>
