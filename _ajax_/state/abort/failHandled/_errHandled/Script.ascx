<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Script.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state.abort.failHandled._errHandled.Script" %>

<script>
	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer=child.parentElement;
		var children=boxer.children;
		var i=0;

		var 
			errHandled=children[i++]
			,
			msger=children[i++]
			,
			state=children[i++]
			,
			$boxer=$(boxer)
			,$errHandled=$(errHandled)
			,$msger=$(msger)
			,$state=$(state)
		;

		var 
			showMsg=function(msg){
				msger.msg(msg);
				$msger.show();
			},
				

			response,

			on= function () {
				$errHandled.on(
					'fail'
					,
					function(e){
						trig.err();
					}
				);
				$errHandled.on(
					'done'
					,
					function (e,data) {
						if (data.err) {
							showMsg("<%=nilnul._web_._CTR_.lang.PerRequest.GetEnZh("Error:","错误：")%>"+data.err.msg);
						}else{
							trig.success(data);
						}
					}
				);
				$msger.on(
					'oked',
					function(){
						trig.err();
					}
				);
			}
			,
			trig={
				success:function(data){
					$state.text("成功了!");
					$boxer.triggerHandler('success',data);
				}
	,
				err:function () {
					$state.text("出错了！");
					$boxer.triggerHandler('err',data);
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{
						send:{value:result.send}
							
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
</script>

