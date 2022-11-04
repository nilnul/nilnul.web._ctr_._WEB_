<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.fitable._fit.Js" %>

<%@ OutputCache Shared="true" Duration="3600000" VaryByParam="l" VaryByCustom="l" %>


<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>=function (child) {
		var
			boxer = child.parentElement
			,
			children = boxer.children
			,
			i = 0
			,
			firstChildEl = children[i++]
			,
			cacheEle = children[i++]
			,
			rscUi = cacheEle.firstElementChild
			,
			ini = function () {

				firstChildEl.fit(
					rscUi
				);
			}
			,
			ready = function () {
				ini();
			}
			;
		ready();
	};
	<% #if false %>
</script>
<% #endif %>
