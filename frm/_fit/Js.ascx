<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.frm._fit.Js" %>
<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>

<% #if false %>
<script>
	<% #endif %>
	; var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer = child.parentElement
			,
			$boxer = $(boxer)

			, children = boxer.children,
			i = 0,
			form = children[i++]
			,
			$form = $(form)
			,
			cacheUi = children[i++]
			,
			$cacheUi = $(cacheUi)
			,
			on = function () {
			}
			,
			trig = {
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer
					,
					{
					}
				);
			},
			ini = function () {
				form.fit(
					cacheUi.firstElementChild
				)
				;
			}
			,
			ready = function () {
				ini();
				on();
				pub();
			}
			;
		ready();
	};
<% #if false %>
</script>
<% #endif %>
