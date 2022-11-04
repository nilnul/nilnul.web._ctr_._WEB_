<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LabeledRegexValidated.ascx.cs" Inherits="nilnul.web.ctrl.LabeledRegexValidated" %>
<%@ Register Src="~/Regex.ascx" TagPrefix="uc1" TagName="Regex" %>
<%@ Register Src="~/Validator.ascx" TagPrefix="uc1" TagName="Validator" %>

<% #if(false) %>
	<script src="http://localhost:12345/script/_web/jquery.js">

	</script>
	<script src="http://localhost:12345/script/_web/nilnul.js">

	</script>
	
<% #endif %>


<label runat="server" id="label"></label>
<uc1:Regex runat="server" id="Regex"  />
<uc1:Validator runat="server" id="Validator" />
<input id="element" type="hidden" runat="server" />
<script>
	(function (
		ctrl,regex,validator
	) {
		//regex.addEventListener("valid", function () { validator.innerHTML = this.valid ? "<%=invalidMsg%>" : "" });

		var handleRegexValidChange = function () {
			validator.innerHTML = (regex.valid ?"": "<%=invalidMsg%>" )
		};

		handleRegexValidChange();

		nilnul.appendEvents(
			regex, "validChangeEvt", handleRegexValidChange
		);

		

		



	})(
		document.getElementById("<%=element.ClientID%>")
		,
		document.getElementById("<%=Regex.ctrlId%>")
		,
		document.getElementById("<%=Validator.clientId%>")

	);

</script>
