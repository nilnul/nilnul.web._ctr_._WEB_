<%@ Page Language="C#" AutoEventWireup="true"  %>

<%@ Register Assembly="nilnul.web._js_.WEB._CTR_" Namespace="nilnul.web._js_.WEB._CTR_" TagPrefix="cc4" %>


<%@ Register src="../LabelEmailRequiredValidator.ascx" tagname="LabelEmailRequiredValidator" tagprefix="uc1" %>


<%@ Register Assembly="nilnul.web._js_.WEB._CTR_" namespace="nilnul.web.script.webctrl" tagprefix="cc1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<cc4:JqueryNilnul ID="JqueryNilnul1" runat="server"></cc4:JqueryNilnul>
</head>
<body>
    	<uc1:LabelEmailRequiredValidator ID="LabelEmailRequiredValidator1" runat="server" />
    
   
</body>
</html>
