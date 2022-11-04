<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ OutputCache Duration="36000000" VaryByParam="l" Shared="true" VaryByCustom="l" %>
<%@ Register Src="~/err/optional_/_func/Js.ascx" TagPrefix="uc1" TagName="Js" %>
<%@ Register Src="~/err/optional_/_length/Js.ascx" TagPrefix="uc2" TagName="Js" %>
<%@ Register Src="~/err/optional_/_regex/Js.ascx" TagPrefix="uc3" TagName="Js" %>
<%@ Register Src="~/validator_/_required/Js.ascx" TagPrefix="uc4" TagName="Js" %>






<uc1:Js runat="server" id="Js" />
<uc2:Js runat="server" id="Js1" />
<uc3:Js runat="server" id="Js2" />
<uc4:Js runat="server" id="Js3" />
