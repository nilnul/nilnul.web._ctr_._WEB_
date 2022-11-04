<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state_.failSeperated.errAlerted.doneAlerted.trigPass._trigRole.Js" %>

<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>

<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)		
			,children=boxer.children
			,i=0
			,trigPassEle=children[i++]
			,$trigPassEle=$(trigPassEle)
			,
			stateEle=children[i++]
			,$stateEle=$(stateEle)
			,
			ini = function () {
			}
			,
			on= function () {
				$trigPassEle.on(
					"err"
					,
					function(e,jqx,textStatus,errorThrown){
						trig.err(jqx,textStatus,errorThrown);
					}
				);
				$trigPassEle.on(
					"done"
					,
					function(e,data,textStatus,jqx){
						trig.done(data,textStatus,jqx);
					}
				);
				$trigPassEle.on(
					"unauthenticated"
					,
					function(e){
						trig.unauthenticated();
					}
				);

				$trigPassEle.on(
					"otherException"
					,
					function(e, jqx,textStatus,errorThrown){

						if (jqx.status == 403){
							trig.unauthorized();
						}
						else {
							trig.otherException(jqx,textStatus,errorThrown);
						}
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
								$trigPassEle.show();
								trigPassEle.post(data);
							}
						}
						,
						url:{
							set:function (x) {
								trigPassEle.url=x;
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