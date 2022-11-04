<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ OutputCache Duration="36000000" VaryByParam="l" Shared="true" VaryByCustom="l" %>
<%@ Register Src="~/human/_gender/Js.ascx" TagPrefix="uc1" TagName="Js" %>
<%@ Register Src="~/human/_birth/Js.ascx" TagPrefix="uc3" TagName="Js" %>
<%@ Register Src="~/human/_names/JsInclusive.ascx" TagPrefix="uc1" TagName="JsInclusive" %>




<uc1:Js runat="server" id="Js" />
<uc3:Js runat="server" id="Js1" />
<uc1:JsInclusive runat="server" id="JsInclusive" />
