<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.txt.warn_._phone.Js" %>
<%@ OutputCache Duration="3600000" VaryByParam="l" Shared="true" VaryByControl="l" %>

<% #if false %>
<script type="text/ecmascript">
	<% #endif %>
	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function ( child ) {
		var boxer = child.parentElement
			,
			$boxer = $( boxer )
			,
			children = boxer.children
			,
			i = 0
			,
			txtUi = children[i++]
			,
			$txtUi = $(txtUi)
			,
			validatorUi = children[i++]
			,
			$validatorUi=$(validatorUi)
			,
			ini = function () {
				<%--//validatorUi.asWarn();--%>
				validatorUi.cfg = {feed:txtUi, regex:new RegExp("<%=this.regex%>"), asWarn:true };
			}
			,
			on = function () {
				$validatorUi.on( 'report',
					function () {
						trig.report();
					}
				);
			}
			,
			trig = {
				report: function () {
					$boxer.triggerHandler(
						'report'
					);
				}
			}

			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{
						beOk: {
							get: function () {
								return validatorUi.beOk;
							}
						}
						,
						val: {
							get: function () {
								return txtUi.val;
							}
							,
							set: function ( x ) {
								txtUi.val = x;
							}
						}
						,
						beErr: {
							get: function () { return validatorUi.beErr; }
						}
						,
						disable: {
							value: function () {
								txtUi.disable();
							}
						},
						enable: {
							value: function () { txtUi.enable(); }
						}
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
