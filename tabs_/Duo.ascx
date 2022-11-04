<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Duo.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.tabs_.Duo" %>

<%@ Register Src="_duo_/Btns.ascx" TagPrefix="uc1" TagName="Btns" %>
<%@ Register Src="_duo_/Panes.ascx" TagPrefix="uc1" TagName="Panes" %>


<table  style="background-color:blue; border:1px solid blue; table-layout:fixed;" >
	<thead>
		<uc1:Btns runat="server" id="Btns" />
	</thead>
	<tbody >
		<tr >
			<td colspan="2" >
				<uc1:Panes runat="server" id="Panes" />
			</td>
		</tr>
	</tbody>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>

</table>