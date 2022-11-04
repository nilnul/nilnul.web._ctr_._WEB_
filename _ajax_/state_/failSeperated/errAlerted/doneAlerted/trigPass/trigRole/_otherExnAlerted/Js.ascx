<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state_.failSeperated.errAlerted.doneAlerted.trigPass.trigRole._otherExnAlerted.Js" %>

<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>

<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)		
			,children=boxer.children
			,i=0

			,trigRoleEle=children[i++]
			,$trigRoleEle=$(trigRoleEle)

			,otherExnAlertEle=children[i++]
			,$otherExnAlertEle=$(otherExnAlertEle)

			,
			stateEle=children[i++]
			,$stateEle=$(stateEle)
			,
			ini = function () {
				$otherExnAlertEle.hide();
			}
			,
			on= function () {
				$trigRoleEle.on(
					"err"
					,
					function(e, jqx,textStatus,errorThrown){
						trig.err(jqx,textStatus,errorThrown);
					}
				);

				$trigRoleEle.on(
					"done"
					,
					function(e,data,textStatus,jqx){
						trig.done(data,textStatus,jqx);
					}
				);
				$trigRoleEle.on(
					"unauthenticated"
					,
					function(e){
						trig.unauthenticated();
					}
				);

				$trigRoleEle.on(
					"unauthorized"
					,
					function(e){
						trig.unauthorized();
					}
				);

				$trigRoleEle.on(
					"otherException"
					,
					function(e, jqx,textStatus,errorThrown){
						$otherExnAlertEle.msg="服务器端异常（用户已获授权）："+JSON.stringify({
							textStatus:textStatus, errorThrown:errorThrown
						});
						$otherExnAlertEle.show();
					}
				);

				$otherExnAlertEle.on("oked",function () {
					$otherExnAlertEle.hide();
					trig.otherException();
				});
			}
			,
			trig={<%--for restful api--%>
				err:function (jqx, textStatus,errorThrown) {
					$boxer.triggerHandler('err',[jqx,textStatus,errorThrown]);
				}
				,
				done:function(data,textStatus,jqx){
					$boxer.triggerHandler('done', [data,textStatus,jqx]);
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
								$otherExnAlertEle.hide();
								$trigRoleEle.show();
								trigRoleEle.post(data);
							}
						}
						,
						url:{
							set:function (x) {
								trigRoleEle.url=x;
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