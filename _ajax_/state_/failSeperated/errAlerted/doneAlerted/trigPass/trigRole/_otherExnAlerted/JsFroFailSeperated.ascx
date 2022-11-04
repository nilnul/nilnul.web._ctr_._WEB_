<%@ Control Language="C#" AutoEventWireup="true" %>

<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>

<%@ Register Src="~/_ajax_/state_/failSeperated/errAlerted/doneAlerted/trigPass/_trigRole/JsFroFailSeperated.ascx" TagPrefix="uc2" TagName="JsFroFailSeperated" %>

<uc2:JsFroFailSeperated runat="server" id="JsFroFailSeperated" />

<%@ Register Src="JsInclusive.ascx" TagPrefix="uc2" TagName="JsInclusive" %>

<uc2:JsInclusive runat="server" ID="JsInclusive1" />
