<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FullName.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.FullName" %>
<%@ Register Src="~/Validator2.ascx" TagPrefix="uc1" TagName="Validator2" %>
<%@ Register Src="~/Regex2.ascx" TagPrefix="uc1" TagName="Regex2" %>


<uc1:Regex2 runat="server" ID="Regex2" regex="^\\s*[^, ]+\\s*(\s|)$" />
<uc1:Validator2 runat="server" ID="Validator2" />

<script>
	(function (
		regex
		,
		validator
	) {



	})(
		document.getElementById("<%=Regex2.ClientID%>")
		,
		document.getElementById("<%=Validator2.ClientID%>")
	);

</script>
