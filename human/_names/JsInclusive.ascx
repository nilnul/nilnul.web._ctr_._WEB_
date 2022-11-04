<%@ Control Language="C#" AutoEventWireup="true" %>

<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" VaryByCustom="l" %>
<%@ Register Src="~/human/_name/Js.ascx" TagPrefix="uc1" TagName="Js" %>
<%@ Register Src="~/human/_name_/_family/Js.ascx" TagPrefix="uc2" TagName="Js" %>
<%@ Register Src="~/human/_name_/_given/Js.ascx" TagPrefix="uc3" TagName="Js" %>
<%@ Register Src="~/human/_name_/_mid/Js.ascx" TagPrefix="uc4" TagName="Js" %>






<uc1:Js runat="server" ID="Js" />
<uc2:Js runat="server" ID="Js1" />
<uc3:Js runat="server" ID="Js2" />
<uc4:Js runat="server" ID="Js3" />
