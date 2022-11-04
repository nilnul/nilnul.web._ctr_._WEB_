<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._abort.Js" %>
<%@ OutputCache Shared="true" Duration="3600000" VaryByParam="l" %>

	<% #if false %>

<script>

<% #endif %>	
	;var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer=child.parentElement
			,
			children=boxer.children
			,
			i=0
			,
			alert=children[i++]
			,
			confirm=children[i++]
			,
			state=children[i++]
			,
			$boxer=$(boxer)
			,
			$alert=$(alert)
			,
			$confirm=$(confirm)
			,
			$state=$(state)
			,
			on = function () {
				$alert.on(
					'oked'
					,
					function () {
						$alert.hide();
						$confirm.show();
					}
				);
				$confirm.on(
					'confirmed',
					function () {
						$confirm.hide();
						$alert.hide();
						$state.text('aborting confirmed');
						trig.aborted();
						
					}
				);
				$confirm.on(
					'canceled'
					,
					function () {
						$confirm.hide();
						$alert.show();
					}
				);
			}
			,
			validate = function () {

			}
			, 
			begin=function(){
				$alert.show();
				$confirm.hide();
			}
			,
			trig={
				aborted:function(){
					$boxer.triggerHandler('aborted');
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{
						begin:{
							value:begin
						}
					}
					);
			}
			,ini = function () {
				$confirm.hide();
				alert.msg="是否停止等待服务器回应？";
				on();
				validate();
				pub();
			}
		;
		ini();
	};
	<% #if false %>

</script>

<% #endif %>