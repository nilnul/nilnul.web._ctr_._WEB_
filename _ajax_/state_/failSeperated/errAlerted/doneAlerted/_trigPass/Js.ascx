<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state_.failSeperated.errAlerted.doneAlerted._trigPass.Js" %>

<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>

<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)		
			,children=boxer.children
			,i=0
			,doneAlertedEle=children[i++]
			,$doneAlertedEle=$(doneAlertedEle)
			,
			stateEle=children[i++]
			,$stateEle=$(stateEle)
			,
			ini = function () {
				<%--$ajax.hide();--%>
			}
			,
			on= function () {
				$doneAlertedEle.on(
					"err"
					,
					function(e, jqx,textStatus,errorThrown){
						
						trig.err();
						
					}
				);

				$doneAlertedEle.on(
					"exception"
					,
					function(e, jqx,textStatus,errorThrown){
						if (jqx.status == 401){
							trig.unauthenticated();
						}
						else {
							trig.otherException(jqx,textStatus,errorThrown);
						}
					}
				);
				$doneAlertedEle.on(
					"done"
					,
					function(e,data,textStatus,jqx ){
						trig.done(data);
					}
				);
			}
			,
			trig={<%--for restful api--%>
				err:function (jqx, textStatus,errorThrown) {
					$boxer.triggerHandler('err',[jqx,textStatus,errorThrown]);
				}
				,
				done:function(data,textStatus,jqx){
					$boxer.triggerHandler('done',[data,textStatus,jqx]);
				}
				,
				otherException:function (jqx, textStatus,errorThrown) {
					$boxer.triggerHandler('otherException',[jqx,textStatus,errorThrown]);
				}
				,
				unauthenticated:function (jqx, textStatus,errorThrown) {
					$boxer.triggerHandler('unauthenticated',[jqx,textStatus,errorThrown]);
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{
						post:{
							value:function(data){
								$doneAlertedEle.show();
								doneAlertedEle.post(data);
							}
						}
						,
						url:{
							set:function (x) {
								doneAlertedEle.url=x;
							}
						}
					}
				);
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