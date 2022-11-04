<%@ Control Language="C#" AutoEventWireup="true" %>

<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>
<%@ Register Src="~/_ajax_/state_/_failSeperated/JsInclusive.ascx" TagPrefix="uc1" TagName="JsInclusive" %>
<%@ Register Src="~/_ajax_/state_/failSeperated/_errAlerted/JsInclusive.ascx" TagPrefix="uc2" TagName="JsInclusive" %>


<uc1:JsInclusive runat="server" ID="JsInclusive" />
<uc2:JsInclusive runat="server" ID="JsInclusive1" />
