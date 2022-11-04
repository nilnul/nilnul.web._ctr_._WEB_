<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>

<%@ Register Src="~/_all/css/src/import/Style.ascx" TagPrefix="uc1" TagName="Style" %>

<uc1:Style runat="server" ID="Style" />

<%@ Register Src="~/_all/js/typeJs/ScriptSrc.ascx" TagPrefix="uc1" TagName="ScriptSrc" %>

<uc1:ScriptSrc runat="server" ID="ScriptSrc" />