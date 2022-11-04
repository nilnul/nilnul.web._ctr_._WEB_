<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="~/tabs_/_duo/Js.ascx" TagPrefix="uc1" TagName="Js" %>


<uc1:Js runat="server" id="Js" />

<%@ Register Src="~/tabs_/_duo_/_btns/JsAll.ascx" TagPrefix="uc1" TagName="JsAll" %>


<uc1:JsAll runat="server" id="JsAll1" />

<%@ Register Src="~/tabs_/_duo_/_panes/JsAll.ascx" TagPrefix="uc2" TagName="JsAll" %>
<uc2:JsAll runat="server" id="JsAll" />
