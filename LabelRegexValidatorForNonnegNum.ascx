<%@ Control Language="C#" AutoEventWireup="true" %>

<%@ Register src="LabelRegexValidator.ascx" tagname="LabelRegexValidator" tagprefix="uc1" %>

<uc1:LabelRegexValidator ID="LabelRegexValidator1" runat="server" regex="^\\s*[+]?\\d*(\\.\\d*)?\\s*$" tip="Nonnegative Decimal:" invalidMsg="Invalid Format." />

