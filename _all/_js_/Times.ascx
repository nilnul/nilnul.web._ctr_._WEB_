<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ OutputCache Duration="36000000" VaryByParam="l" Shared="true" VaryByCustom="l" %>
<%@ Register Src="~/time/bound_/_day/Js.ascx" TagPrefix="uc1" TagName="Js" %>
<%@ Register Src="~/time/bound_/day_/_leNow/Js.ascx" TagPrefix="uc2" TagName="Js" %>


<uc1:Js runat="server" id="Js" />
<uc2:Js runat="server" id="Js1" />
