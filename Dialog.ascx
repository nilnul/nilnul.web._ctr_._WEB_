<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Dialog.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Dialog" %>

<%-- 
	movable, resizable (min, max, restore),closable

	implementation: 

	--%>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>

<%@ Register Src="~/_dialog_/TopBar.ascx" TagPrefix="uc1" TagName="TopBar" %>

<%--
	lazyFit 
--%>
<div style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; background-color: rgba(25,25,25,.8); display: none; overflow: hidden;" class="nilnul-dialog-back">
	<div style="width: 100%; height: 100%; overflow: hidden; display: flex; flex-direction: column;">
		<uc1:TopBar runat="server" ID="TopBar" />
		<div style="flex: 1 1 auto; overflow: hidden;">
			<%--content--%>
		</div>
		<div>
			<%--state--%>
		</div>
	</div>
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>
