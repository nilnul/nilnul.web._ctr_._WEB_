<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.tabs_.horizon._fit.Js" %>

<%@ OutputCache Shared="true" VaryByParam="none" Duration="36000000" VaryByCustom="l" %>

<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>=function (child) {
		var
			boxer = child.parentElement
			,
			$boxer = $(boxer)
			,
			children = boxer.children
			,
			i = 0
			,
			naviEle = children[i++]
			,
			$naviEle = $(naviEle)
			,
			cacheEle = children[i++]
			, $cacheEle = $(cacheEle)
			,
			on = function () {

			}
			,

			trig = {


			}
			,
			ini = function () {
				naviEle.fit$($cacheEle);
				<%--naviEle.radioAlign = "right";--%>
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{

					}
				);
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
