<%@ Page Language="C#" AutoEventWireup="true"  %>




<%@ Register src="../LabelRegexValidatorForStationedPhoneNumber.ascx" tagname="LabelRegexValidatorForStationedPhoneNumber" tagprefix="uc2" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<uc2:LabelRegexValidatorForStationedPhoneNumber ID="LabelRegexValidatorForStationedPhoneNumber1" runat="server"  />
	<script>
		(function (
			phone

			) {
			phone.val("85-11-312341");

			alert(phone.val.json().country);

		})(
			document.getElementById("<%=LabelRegexValidatorForStationedPhoneNumber1.lableRegexValidatorClientId%>")
		);

	</script>
   
	
   
</body>
</html>
