<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.human._birth.Js" %>

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
			selUi=children[i++]
			,
			$selUi=$(selUi)
			,
			ini = function () {
			}
			,
			on = function () {
				$selUi.change(
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
				boxer
				,
				{
					
					val: {
						get: function () {
							return selUi.value;
						}
						,
						set: function (v) {
							selUi.value=v;
						}
					}
				}
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
