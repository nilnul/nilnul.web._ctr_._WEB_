<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Script.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state._alwaysAlerted.Script" %>

<script>
	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer=child.parentElement;
		var children=boxer.children;
		var i=0;

		var ajax=children[i++]
			,
			 msger=children[i++]
			,
			successAlert=children[i++]
			,
			 state=children[i++]
			,$boxer=$(boxer)
			, $ajax=$(ajax)
			, $msger=$(msger)
			,$successAlert=$(successAlert)

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

						showMsg("没有发起访问，因为："+ textStatus +";"+errThrown);
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
						trig.err();
					}
				);
				$successAlert.on(
					'oked'
					,
					function () {
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
								successAlert.msg(x);
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
	}
</script>
