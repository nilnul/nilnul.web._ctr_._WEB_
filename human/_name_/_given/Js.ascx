<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.human._name_._family._given.Js" %>

<%@ OutputCache Duration="36000000" VaryByParam="l" VaryByCustom="l" Shared="true" %>

<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer = child.parentElement
			, $boxer = $(boxer)
			, children = boxer.children,
			i = 0,
			labelUi = boxer.children[i++]
			, $labelUi = $(labelUi)
			, txtErrUi = labelUi.firstElementChild
			, $txtErrUi = $(txtErrUi)
			,
			ini = function () {
				txtErrUi.constraints.regex="\\S+";
			}
			,
			on = function () {
				$txtErrUi.on(
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
				boxer
					,
				{
					val: {
						get: function () {
							return txtErrUi.val;
						}
						,
						set: function (v) {
							txtErrUi.val = v;
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
