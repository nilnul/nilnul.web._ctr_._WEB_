<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state_.failSeperated._errAlerted.Js" %>

<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>

<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>=function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)		
			,children=boxer.children
			,i=0

			,ajax=children[i++]
			,$ajax=$(ajax)
			,msger=children[i++]
			,$msger=$(msger)
			,
			state=children[i++]
			,$state=$(state)
			, 
			showMsg=function(msg){
				msger.msg=msg;
				$msger.show();
			}
			,
			on= function () {
				$ajax.on(
					'err'
					,
					function(e,jqx, textStatus, errThrown){
						$state.hide();
						showMsg(
							"没有发起访问，因为："+ JSON.stringify({
								textStatus:textStatus, 
								errThrown:errThrown
							})
						);
					}
				);
				$ajax.on(
					'done'
					,
					function (e,data, textStatus, jqx) {
						<%-- for the sake of restful api, the error will be carried by the http response status. so here the data is all payload --%>
						
						$state.text("服务器回应正常。数据已接收。");
						<%--showMsg("<%=nilnul._web_._CTR_.lang.PerRequest.GetEnZh("结果：","Result:")%>" +$.param(data));--%>
						trig.done(data, textStatus,jqx);
						$state.text("");
						
					}
				);
				$ajax.on(
					'exception'
					,
					function (e, jqx,textStatus, errorThrown) {
						<%-- for the sake of restful api, the error will be carried by the http response status. so here the data is all payload --%>
						
						$state.text("服务器回应为异常。");
						<%--showMsg("<%=nilnul._web_._CTR_.lang.PerRequest.GetEnZh("结果：","Result:")%>" +$.param(data));--%>
						trig.exception(jqx,textStatus,errorThrown);
						$state.text("");
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
			trig={<%--for restful api--%>
				done:function(data, textStatus,jqx){
					$boxer.triggerHandler('done',[data,textStatus,jqx]);
				}
				,
				err:function (jqx, textStatus,errorThrown) {
					$boxer.triggerHandler('err',[jqx,textStatus,errorThrown]);
				}
				,
				exception:function (jqx, textStatus,errorThrown) {
					$boxer.triggerHandler('exception',[jqx,textStatus,errorThrown]);
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{
						
						post:{
							value:function(data){
								$state.text("正在发起访问...");
								$msger.hide();
								ajax.post(data);
								$state.text("");
							}
						}
						,
						url:{
							set:function (x) {
								ajax.url=x;
							}
						}
							
					}
				);
			},
			ini = function () {
				<%--debugger;--%>
				$msger.hide();
			}
			,ready=function () {
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