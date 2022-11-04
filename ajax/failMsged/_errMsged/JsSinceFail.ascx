<%@ Control Language="C#" AutoEventWireup="true" %>

<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>
<%@ Register Src="~/ajax/_failMsged/JsInclusive.ascx" TagPrefix="uc1" TagName="JsInclusive" %>
<%@ Register Src="~/ajax/failMsged/_errMsged/JsInclusive.ascx" TagPrefix="uc2" TagName="JsInclusive" %>




<uc1:JsInclusive runat="server" ID="JsInclusive" />
<uc2:JsInclusive runat="server" ID="JsInclusive1" />
