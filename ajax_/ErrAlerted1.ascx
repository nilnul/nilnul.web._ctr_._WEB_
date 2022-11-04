<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ OutputCache Shared="true" VaryByParam="none" Duration="36000000"%>

<%@ Register Src="~/_ajax_/state_/errSeperated/errAlerted.ascx" TagPrefix="uc1" TagName="ErrAlerted" %>

<uc1:ErrAlerted runat="server" id="ErrAlerted" />
