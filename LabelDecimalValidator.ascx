<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LabelDecimalValidator.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.LabelDecimalValidator" %>

<%@ Register Src="~/Validator.ascx" TagPrefix="uc1" TagName="Validator" %>
<%@ Register Src="~/Decimal.ascx" TagPrefix="uc1" TagName="Decimal" %>


<% #if(false) %>
	<script src="http://localhost:12345/script/_web/jquery.js">

	</script>
	<script src="http://localhost:12345/script/_web/nilnul.js">

	</script>
	
<% #endif %>


<label runat="server" id="label">Decimal:</label>
<uc1:Decimal runat="server" ID="Decimal" />
<uc1:Validator runat="server" id="Validator" />
<input id="key" type="hidden" runat="server" />
<script>
	(function (
		key,decimal,email,validator
	) {
		//regex.addEventListener("valid", function () { validator.innerHTML = this.valid ? "<%=invalidMsg%>" : "" });

		//var key = ctrl;

		var handleEmailRaisedChanged = function () {
			validator.innerHTML = (decimal.validityGet() ? "" : "<%=invalidMsg%>");

			nilnul.fireAction(key.raisedChangedEvt);
		};

		var listenEvts = function () {
			nilnul.appendEvents(
				email, "raisedChangedEvt", handleEmailRaisedChanged
			);
			handleEmailRaisedChanged();


		};

	
		var init = function () {

			listenEvts();

			

			key.valid = validator.valid;

			key.disable = email.disable;
			key.enable = email.enable;
			key.val = email.val;


		};

		init();
		

		



	})(
		document.getElementById("<%=key.ClientID%>")
		,
		document.getElementById("<%=Decimal.keyId%>")
		,
		document.getElementById("<%=Decimal.keyId%>")
		,
		document.getElementById("<%=Validator.clientId%>")

	);

</script>
