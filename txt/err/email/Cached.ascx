<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ OutputCache Shared="true" Duration="3600000" VaryByParam="none"  %>
<%@ Register Src="~/txt/err/Email.ascx" TagPrefix="uc1" TagName="Email" %>

<uc1:Email runat="server" ID="Email" />
