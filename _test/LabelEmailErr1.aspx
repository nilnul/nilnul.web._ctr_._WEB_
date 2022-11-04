<%@ Page Title="" Language="C#" MasterPageFile="~/_master/ForTest1.Master" AutoEventWireup="true"  %>

<%@ Register Src="~/LabelEmailErr_scriptLoad.ascx" TagPrefix="uc1" TagName="LabelEmailErr_scriptLoad" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<uc1:LabelEmailErr_scriptLoad runat="server" id="LabelEmailErr_scriptLoad" />
</asp:Content>
