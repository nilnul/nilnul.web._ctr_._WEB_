<%@ Page Language="C#" AutoEventWireup="true" %>

<%@ Register Src="~/LabelRegexValidatorForPhoneNumber.ascx" TagPrefix="uc1" TagName="LabelRegexValidatorForPhoneNumber" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
	<uc1:LabelRegexValidatorForPhoneNumber runat="server" id="LabelRegexValidatorForPhoneNumber1" />
	<script>
		(function (
			phone

			) {
			alert(phone.val.json());

		})(
			document.getElementById("<%=LabelRegexValidatorForPhoneNumber1.ClientID%>")
		);

	</script>
   
</body>
</html>
