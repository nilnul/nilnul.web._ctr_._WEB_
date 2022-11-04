<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.urlAssignable._urlAssign.Js" %>

<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>=function (child) {
		var 
			boxer = child.parentElement
			,$boxer=$(boxer)
			,
			children=boxer.children
			,
			i = 0
			,
			firstChildEl=children[i++]
			,
			ini = function () {
				firstChildEl.url = $boxer.data("url");
			}
			,
			ready=function () {
				ini();
			}
		;
		ready();
	};
	<% #if false %>
</script>
<% #endif %>
