<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Duo.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._radio_._duo.Duo" %>
<%-- impossible if none is selected --%>

<%@ OutputCache Shared="true" Duration="3600000" VaryByParam="l" %>



<table style="white-space: nowrap; flex-wrap: nowrap; text-wrap: none;">
	<tbody>

		<tr>
			<td>
				<button class="<%= classSelected%>" disabled="true">
				</button>

			</td>
			<td>
				<button>
				</button>

			</td>

		</tr>
	</tbody>

	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</table>


