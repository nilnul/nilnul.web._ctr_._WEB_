<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax.cors.failMsged._withBtn.Js" %>
<%@ OutputCache Duration="36000000" VaryByParam="l" Shared="true" VaryByCustom="l" %>

<% #if false %>
<script>
	<% #endif %>
	;
	var <%=unique_func_name %>= <%=unique_func_name %> ||function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)		
			,children=boxer.children
			,i=0

			,btnUi=children[i++]
			,$btnUi=$(btnUi)

			,failMsgedUi=children[i++]
			,$failMsgedUi=$(failMsgedUi)
			,
			stateEle=children[i++]
			,$stateEle=$(stateEle)
			,
			ini = function () {
				$failMsgedUi.hide();
			}
			,
			on= function () {
				$failMsgedUi.on(
					"fail"
					,
					function(e, jqx,textStatus,errorThrown){
						trig.err(jqx,textStatus,errorThrown);
						$btnUi.show();
						$failMsgedUi.hide();
					}
				);

				$failMsgedUi.on(
					"done"
					,
					function (e, data, textStatus, jqx){
						trig.done(data, textStatus, jqx);
						$btnUi.show();
						$failMsgedUi.hide();
					}
				);
				$btnUi.click(
					function() {
						trig.btnClick();
					}
				);

			}
			,
			trig={<%--for restful api--%>
				fail:function (jqx, textStatus,errorThrown) {
					$boxer.triggerHandler('fail',[jqx,textStatus,errorThrown]);
				}
				,
				done: function (data, textStatus, jqx){
					$boxer.triggerHandler('done', [data, textStatus, jqx]);
				}
				,
				btnClick: function (){
					$boxer.triggerHandler('btnClick');
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
								$btnUi.hide();
								$failMsgedUi.show();
								failMsgedUi.post(data);
							}
						}
						,
						url:{
							set:function (x) {
								failMsgedUi.url=x;
							}
						}
						,disableBtn:{
							value:function () {
								btnUi.disabled=true;
							}
						}
						,enableBtn:{
							value:function () {
								btnUi.disabled=false;
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
