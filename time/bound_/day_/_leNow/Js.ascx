<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.time.bound_.day_._leNow.Js" %>

<%@ OutputCache Duration="36000000" VaryByParam="l" VaryByCustom="l" Shared="true" %>
<%-- layout separted from logic --%>

<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var boxer = child.parentElement
			, $boxer = $(boxer)
			, children = boxer.children
			,
			i = 0
			,
			dateUi = children[i++]
			,
			$dateUi = $(dateUi)
			,

			ini = function () {
				var now = new Date();
				
				dateUi.max = `${now.getFullYear()}-${
					(now.getMonth() + 1).toString().padStart(2, "0")
				}-${
					now.getDate().toString().padStart(2, "0")
				}`; <%--   new Date().toISOString().split("T")[0];--%>
			}
			,
			on = function () {
				$dateUi.on(
					"report"
					,
					trig.report
				);
			}
			,
			trig = {
				report: function () {
					$boxer.triggerHandler('report');
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer
					,
					{

						val: {
							get: function () {
								return dateUi.value;
							}
							,
							set: function (v) {
								dateUi.value = v;
							}
						}
						,
						beOk: {
							get: function () {
								return dateUi.beOk;
							}
						}
					}
				);
			}
			, ready = function () {
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
