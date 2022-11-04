<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ OutputCache Duration="36000000" VaryByParam="l" Shared="true" VaryByCustom="l" %>
<%@ Register Src="~/tabs_/_horizon/Js.ascx" TagPrefix="uc1" TagName="Js" %>
<%@ Register Src="~/tabs_/horizon/_fit/Js.ascx" TagPrefix="uc2" TagName="Js" %>



<uc1:Js runat="server" ID="Js" />
<uc2:Js runat="server" id="Js1" />
