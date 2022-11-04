<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.txt.err.email._labeled.Js" %>
<%@ OutputCache Duration="3600000" VaryByParam="none" Shared="true" %>

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
			labelEl=children[i++]
			,
			emailUi = children[i++]
			,
			$emailUi = $( emailUi )
			,
			on = function () {
				$emailUi.on( 'report',
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
								return emailUi.beOk;
							}
						}
						,
						val: {
							get: function () {
								return emailUi.val;
							}
							,
							set: function ( x ) {
								emailUi.val = x;
							}
						}
						,
						beErr: {
							get: function () { return emailUi.beErr; }
						}
						,
						disable: {
							value: function () {
								emailUi.disable();
							}
						},
						enable: {
							value: function () { emailUi.enable(); }
						}
					}
				);
			}
			,
			ini = function () {
				
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
