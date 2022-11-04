<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state._alwaysAlerted.Js" %>

<% #if false %>

<script>

	<% #endif %>	
	;var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)
		
		;
		var children=boxer.children;
		var i=0;

		var ajax=children[i++]
			, $ajax=$(ajax)
			,
			 msger=children[i++]
			, $msger=$(msger)
			,
			successAlert=children[i++]
			,$successAlert=$(successAlert)
			,
			 state=children[i++]
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

						showMsg("没有发起访问，可能是网断了("+ textStatus +";"+errThrown  +")");
					}
				);
				$ajax.on(
					'done'
					,
					function (e,data) {
						data=data||{};
						
						if (data.err) {
								
							showMsg("<%=nilnul._web_._CTR_.lang.PerRequest.GetEnZh("Error:","错误：")%>"+data.err.msg);
								
					}else{
						successAlert.msg=(data.msg);
						trig.preSuccess(data);

						$successAlert.show();

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
			$successAlert.on(
				'oked'
				,
				function () {
					$successAlert.hide();
					trig.success();
    
				}
			);
		}
		,
		trig={
			success:function(data){
				$state.text("已通知用户：成功！");
				$boxer.triggerHandler('success',data);
			}
			,
			err:function (data) {
				$boxer.triggerHandler('err',data);
			}
			,
			preSuccess:function (response) {
				$state.text("服务器应答：成功，正通知用户...");
				$boxer.triggerHandler('preSuccess',response);
    
			}
		}
		,
		pub = function () {
			Object.defineProperties(
				boxer,
				{
					send:{value:ajax.send}
					,
					handler:{
						set:function (x) {
							ajax.handler=x;
						}
					}
					,
					successMsg:{
						set:function (x) {
							successAlert.msg=(x);
						}
					}
					,
					reset:{
						value:function () {
							$msger.hide();
							$successAlert.hide();
						}
					}
							
				}
			);
		},
		ini = function () {
			$msger.hide();
			$successAlert.hide();
			on();
			pub();
		}
		;
		ini();
	};
	<% #if false %>

</script>

<% #endif %>