<%@ Page Language="C#" AutoEventWireup="true"  %>



<%@ Register src="../LabelRegexValidatorForMobileNumber.ascx" tagname="LabelRegexValidatorForMobileNumber" tagprefix="uc1" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

<uc1:LabelRegexValidatorForMobileNumber ID="LabelRegexValidatorForMobileNumber1" runat="server" />
	<script>
		(function (
			phone

			) {
			//alert(phone.val());

		})(
			document.getElementById("<%=LabelRegexValidatorForMobileNumber1.ClientID%>")
		);

	</script>
   
		
   
</body>
</html>
