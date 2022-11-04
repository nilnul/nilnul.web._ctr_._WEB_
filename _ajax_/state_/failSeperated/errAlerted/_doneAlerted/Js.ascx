<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state_.failSeperated.errAlerted._doneAlerted.Js" %>
<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>

<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)		
			,children=boxer.children
			,i=0
			,errAlertedEle=children[i++]
			,$errAlertedEle=$(errAlertedEle)

			,msgerEle=children[i++]
			,$msgerEle=$(msgerEle)
			,
			stateEle=children[i++]
			,$stateEle=$(stateEle)
			,
			showMsg=function (msg) {
				msgerEle.msg=msg;
				$msgerEle.show();
			}
			,
			ini = function () {
				$msgerEle.hide();
				<%--$ajax.hide();--%>
			}
			,
			on= function () {
				$errAlertedEle.on(
					'err'
					,
					function(e,jqx, textStatus,errorThrown){
						trig.err(
							jqx,textStatus,errorThrown
						);
					}
				);
				var _doneParS;

				$errAlertedEle.on(
					"done"
					,
					function(e, data,textStatus,jqx){
						_doneParS=[data,textStatus,jqx];

						showMsg(
							"<%= nilnul.web.svr.module_.ling_.perRequest_.perferCn2En.AftModule.GetCnEn("成功","Success")%>"
						);
					}
				);


				$msgerEle.on(
					'oked'
					,
					function () {
						$msgerEle.hide();
						trig.done(_doneParS);
						
					}
				);

				$errAlertedEle.on(
					'exception'
					,
					function(e,jqx, textStatus,errorThrown){
						trig.exception(
							jqx,textStatus,errorThrown
						);
					}
				);

				
			}
			,
			trig={<%--for restful api--%>
				
				err:function (jqx, textStatus,errorThrown) {
					$boxer.triggerHandler('err',[jqx,textStatus,errorThrown]);
				},
				done:function(doneParS){
					$boxer.triggerHandler('done', doneParS);
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
								<%--$ajax.show();--%>
								$msgerEle.hide();
								$errAlertedEle.show();
								errAlertedEle.post(data);
							}
						}
						,
						url:{
							set:function (x) {
								errAlertedEle.url=x;
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