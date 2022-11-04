<%@ Control Language="C#" AutoEventWireup="true"  %>



<%@ Register Src="~/_txt/Js.ascx" TagPrefix="uc1" TagName="Js" %>

<uc1:Js runat="server" ID="Js" />


<%@ Register Src="~/_ajax_/_state/Js.ascx" TagPrefix="uc2" TagName="Js" %>

<uc2:Js runat="server" id="Js1" />


<%@ Register Src="~/_ajax_/state/_alwaysAlerted/Js.ascx" TagPrefix="uc3" TagName="Js" %>
<uc3:Js runat="server" id="Js2" />


<%@ Register Src="~/_ajax_/state/_errAlerted/Js.ascx" TagPrefix="uc4" TagName="Js" %>
<uc4:Js runat="server" id="Js3" />


<%@ Register Src="~/_confirm/Js.ascx" TagPrefix="uc5" TagName="Js" %>
<uc5:Js runat="server" id="Js4" />


<%@ Register Src="~/_abort/Js.ascx" TagPrefix="uc6" TagName="Js" %>
<uc6:Js runat="server" id="Js5" />
;
<%-- ajax.state.errAlerted._withButton--%>




<%@ Register Src="~/_ajax_/state/errAlerted/_withButton/Js.ascx" TagPrefix="uc7" TagName="Js" %>



<uc7:Js runat="server" id="Js7" />
;
<%@ Register Src="~/_alert/Js.ascx" TagPrefix="uc8" TagName="Js" %>

<uc8:Js runat="server" id="Js6" />
