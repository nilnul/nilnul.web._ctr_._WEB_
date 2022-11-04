<%@ Control Language="C#" AutoEventWireup="true" %>

<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>


<%@ Register Src="Js.ascx" TagPrefix="uc1" TagName="Js" %>

<uc1:Js runat="server" id="Js1" />
<%@ Register Src="~/_dialog_/_topBar/JsInclusive.ascx" TagPrefix="uc1" TagName="JsInclusive" %>

<uc1:JsInclusive runat="server" id="JsInclusive" />
