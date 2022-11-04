<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.txt.err._email.Js" %>
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
			txtErr = children[i++]
			,
			$txtErr = $( txtErr )
			,
			on = function () {
				$txtErr.on( 'report',
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
								return txtErr.beOk;
							}
						}
						,
						val: {
							get: function () {
								return txtErr.val;
							}
							,
							set: function ( x ) {
								txtErr.val = x;
							}
						}
						,
						beErr: {
							get: function () { return txtErr.beErr; }
						}
						,
						disable: {
							value: function () {
								txtErr.disable();
							}
						},
						enable: {
							value: function () { txtErr.enable(); }
						}
					}
				);
			}
			,
			ini = function () {
				txtErr.constraints = {
					required: true
					,
					regex: "(^(?:[a-zA-Z0-9_-]+\\.){0,2}(?:[a-zA-Z0-9_-]+)@(?:[a-zA-Z0-9_-]+\\.)+[a-zA-Z]{2,4}$)"

				};
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
