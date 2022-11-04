<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navi.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.tabs_.vertical_.Navi" %>
<%@ OutputCache Duration="3600000" VaryByParam="none" Shared="true" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ Register Src="~/radio_/Vertical.ascx" TagPrefix="uc1" TagName="Vertical" %>
<%@ Register Src="~/Alter.ascx" TagPrefix="uc1" TagName="Alter" %>
<%@ Register Src="~/State.ascx" TagPrefix="uc1" TagName="State" %>


<div style="height:100%;">
	<table style="table-layout: fixed; width: 100%; height:100%;">
		<colgroup>
			<col span="1" style="width:8em;">
			<col span="1" style="width: 100%;">
		</colgroup>

		<tbody>
			<tr>
				<th style="vertical-align: top;">
					<uc1:Vertical runat="server" ID="Vertical" />
				</th>
				<td>
					<uc1:Alter runat="server" ID="Alter" />
				</td>
			</tr>
		</tbody>
	</table>
	<uc1:State runat="server" ID="State" />
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>

