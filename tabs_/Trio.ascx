<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Trio.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.tabs_.Trio" %>


<table  class="nilnul-tabs-table" >
	<thead>
		<%@ Register Src="_trio_/Btns.ascx" TagPrefix="uc1" TagName="Btns" %>
		<uc1:Btns runat="server" id="Btns" />
	</thead>
	<tbody class="nilnul-tabs-body">
		<tr class="nilnul-tabs-body">
			<td colspan="3" class="nilnul-tabs-body">
				<%@ Register Src="_trio_/Panes.ascx" TagPrefix="uc1" TagName="Panes" %>
				<uc1:Panes runat="server" id="Panes" />
			</td>
		</tr>
	</tbody>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>

</table>
