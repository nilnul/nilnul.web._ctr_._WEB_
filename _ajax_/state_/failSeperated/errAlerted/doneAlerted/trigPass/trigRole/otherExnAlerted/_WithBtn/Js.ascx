<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state_.failSeperated.errAlerted.doneAlerted.trigPass.trigRole.otherExnAlerted._withBtn.Js" %>

<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>

<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)		
			,children=boxer.children
			,i=0

			,submitEle=children[i++]
			,$submitEle=$(submitEle)

			,otherExnAlertedEle=children[i++]
			,$otherExnAlertedEle=$(otherExnAlertedEle)
			,
			stateEle=children[i++]
			,$stateEle=$(stateEle)
			,
			ini = function () {
				$otherExnAlertedEle.hide();
			}
			,
			on= function () {
				$otherExnAlertedEle.on(
					"err"
					,
					function(e, jqx,textStatus,errorThrown){
						trig.err(jqx,textStatus,errorThrown);
						$submitEle.show();
						$otherExnAlertedEle.hide();
					}
				);

				$otherExnAlertedEle.on(
					"done"
					,
					function(e){
						trig.done();
						$submitEle.show();
						$otherExnAlertedEle.hide();
					}
				);
				$otherExnAlertedEle.on(
					"unauthenticated"
					,
					function(e){
						trig.unauthenticated();
						$submitEle.show();
						$otherExnAlertedEle.hide();
					}
				);

				$otherExnAlertedEle.on(
					"unauthorized"
					,
					function(e){
						trig.unauthorized();
						$submitEle.show();
						$otherExnAlertedEle.hide();
					}
				);

				$otherExnAlertedEle.on(
					"otherException"
					,
					function(e, jqx,textStatus,errorThrown){
						trig.otherException();
						$submitEle.show();
						$otherExnAlertedEle.hide();
					}
				);
			}
			,
			trig={<%--for restful api--%>
				err:function (jqx, textStatus,errorThrown) {
					$boxer.triggerHandler('err',[jqx,textStatus,errorThrown]);
				}
				,
				done:function(){
					$boxer.triggerHandler('done');
				}
				,
				unauthenticated:function (jqx, textStatus,errorThrown) {
					$boxer.triggerHandler('unauthenticated',[jqx,textStatus,errorThrown]);
				},
				unauthorized:function (jqx, textStatus,errorThrown) {
					$boxer.triggerHandler('unauthorized',[jqx,textStatus,errorThrown]);
				}
				,
				otherException:function (jqx, textStatus,errorThrown) {
					$boxer.triggerHandler('otherException',[jqx,textStatus,errorThrown]);
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{
						post:{
							value:function(data){
								<%--$ajax.show();--%>
								$submitEle.hide();
								$otherExnAlertedEle.show();
								otherExnAlertedEle.post(data);
							}
						}
						,
						url:{
							set:function (x) {
								otherExnAlertedEle.url=x;
							}
						}
						,disableBtn:{
							value:function () {
								submitEle.disabled=true;
							}
						}
						,enableBtn:{
							value:function () {
								submitEle.disabled=false;
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