<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state_.failSeperated.errAlerted._btn2Go.Js" %>

<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>

<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)		
			,children=boxer.children
			,i=0
			,btn=children[i++]
			,$btn=$(btn)

			,ajax=children[i++]
			,$ajax=$(ajax)
			,
			state=children[i++]
			,$state=$(state)
			, 
			
			on= function () {

				$btn.click(
					function(){
						$btn.hide();
						trig.clicked();<%--consumer then can proceed to "post"  --%>
					}
				);
				$ajax.on(
					'done'
					,
					function (e,data, textStatus, jqx) {
						trig.done(data, textStatus,jqx);
						<%--
						$ajax.hide();--%>
						$btn.show();
					}
				);

				$ajax.on(
					'err'
					,
					function(e,jqx, textStatus, errThrown){
						trig.err(jqx,textStatus,errThrown);
						<%--
						$ajax.hide();--%>
						$btn.show();
					}
				);

				$ajax.on(
					'exception'
					,
					function (e, jqx,textStatus, errorThrown) {
						trig.exception(jqx,textStatus,errorThrown);
						<%--$ajax.hide();--%>
						$btn.show();
						
					}
				);
			}
			,
			trig={<%--for restful api--%>
				clicked:function () {
					$boxer.triggerHandler("clicked");	//listeners can then post their data.
				}
				,
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
								<%--$ajax.show();--%>
								ajax.post(data);
							}
						}
						,
						url:{
							set:function (x) {
								ajax.url=x;
							}
						}
						,
						btnTxt:{
							set:function (x) {
								$btn.text(x);
							}
						}
							
					}
				);
			}
			,
			ini = function () {
				<%--$ajax.hide();--%>
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