<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.txtArea._probe.Js" %>

<%--
	to be paremeterized with a "probe" which returns message
--%>

<% #if false %>
<script type="text/ecmascript">
	<% #endif %>

	;var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer=child.parentElement
			,
			$boxer=$(boxer)
			,
			children=boxer.children
			,i=0
			,
			txtArea = children[i++]
			,
			$txtArea=$(txtArea)
			,
			errUi=children[i++]
			,
			$errUi=$(errUi)
			,
			probe=function (v) {
				return "";
			}
			,
			valGet=function () {
				return txtArea.val;
			}
			,
			valSet=function () {
				txtArea.val=v;
				check();
			}
			,
			_check = function () {
				errUi.msg= probe(txtArea.val);
			}
			,
			check=function () {
				var oldValid=errUi.beValid;
				_check();
				if (oldValid || errUi.beValid) {
					trig.report();
				}
			}
			,
			on = function () {
				$txtArea.on(
					'changed'
					,
					function () {
						check();
					}
				);
			}
			,
			trig={
				report:function () {
					$boxer.triggerHandler("report");
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						val:{
							get:valGet
							,
							set:valSet

						}
						,
						beValid:{
							get:function () {
								return errUi.beValid;
							}
						}
						,
						probe:{
							set:function (v) {
								probe=v;
								check();
							}
						}
						,
						value:{
							get:valGet
						,
							set:valSet
						}
						,
						disable:{
							value:function () {
								txtArea.disable();
							}
						},
						enable:{
							value:function () {
								txtArea.disable();
							}
						}
						,
						focus:{
							value:function () {
								$txtArea.focus();
							}
						}
						
					}
				);
			}
			,
			ini = function () {
				check();
			}
			,
		
			ready=function () {
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

