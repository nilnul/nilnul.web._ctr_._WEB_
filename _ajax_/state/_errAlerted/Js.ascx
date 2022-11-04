<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state._errAlerted.Js" %>


<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>

<%--  --%>
	<% #if false %>

<script>

<% #endif %>
	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer=child.parentElement;
		var children=boxer.children;
		var i=0;

		var ajax=children[i++];

		var msger=children[i++]
			,
			 state=children[i++]

			,$boxer=$(boxer)
			, $ajax=$(ajax)
			, $msger=$(msger)
			,$state=$(state)
			, 
			showMsg=function(msg){
				msger.msg=(msg);
				$msger.show();
			}
			,
			on= function () {

				$ajax.on(
					'fail'
					,
					function(e,textStatus, errThrown){
						$state.hide();
						showMsg("没有发起访问，因为："+ textStatus +";"+errThrown);
					}
				);
				$ajax.on(
					'done'
					,
					function (e,data) {
						
						if (data.err) {
							<% #if DEBUG
		%>
							debugger;
							<% #endif %>
							
							showMsg("<%=nilnul._web_._CTR_.lang.PerRequest.GetEnZh("Error:","错误：")%>"+data.err.msg);
								
						}else{
							$state.text("服务器应答：成功！");
								<%--showMsg("<%=nilnul._web_._CTR_.lang.PerRequest.GetEnZh("结果：","Result:")%>" +$.param(data));--%>
							trig.success(data);
							$state.text("");
						}
					}
				);
				$msger.on(
					'oked',
					function(){
						$msger.hide();
						trig.err();
					}
				);
			}
			,
			trig={
				success:function(data){
					$boxer.triggerHandler('success',data);
				}
				,
				err:function (data) {
					$boxer.triggerHandler('err',data);
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{
						send:{
							value:function(data){
								$state.text("正在发起访问...");
								$msger.hide();
								ajax.send(data);
								$state.text("");
							}
						}
						,
						post:{
							value:function(data){
								$state.text("正在发起访问...");
								$msger.hide();
								ajax.post(data);
								$state.text("");
							}
						}
						,
						handler:{
							set:function (x) {
								ajax.handler=x;
							}
						}
							
					}
				);
			},
			ini = function () {
				$msger.hide();
				on();
				pub();
			}
		;
		ini();
	}
	<% #if false %>

</script>

<% #endif %>