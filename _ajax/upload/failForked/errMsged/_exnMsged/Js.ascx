<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax.upload.failForked.errMsged._exnMsged.Js" %>
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

				$errAlertedEle.on(
					"exn"
					,
					function(e,jqx,textStatus,errorThrown){<%--When an HTTP error occurs, errorThrown receives the textual portion of the HTTP status, such as "Not Found" or "Internal Server Error." As of jQuery 1.5, the error setting can accept an array of functions. Each function will be called in turn. Note: This handler is not called for cross-domain script and cross-domain JSONP requests.
					errorThrown is the status description.
	
	 --%>
						<%--
						Make sure you're setting Response.StatusCode to something other than 200. Write your exception's message using Response.Write, then use...
xhr.responseText

..in your javascript.
	xhr.responseJSON is only set if you ensure, that the meta-type is set (e.g. "Content-type: application/json"). That's a problem I just encountered; responseText was set - responseJSON was not. – Igor Dec 30 '14 at 
	--%>
						showMsg(
							"<%= nilnul.web.svr.module_.ling_.perRequest_.perferCn2En.AftModule.GetCnEn("异常","Exception")%>"+":"+jqx.responseText
						);
					}
				);

				$msgerEle.on(
					'oked'
					,
					function () {
						$msgerEle.hide();
						trig.exn();
						
					}
				);

				$errAlertedEle.on(
					'done'
					,
					function(e,data,textStatus,jqx){
						trig.done(
							data,textStatus,jqx
						);
					}
				);
			}
			,
			trig={<%--for restful api--%>
				
				err:function (jqx, textStatus,errorThrown) {
					$boxer.triggerHandler('err',[jqx,textStatus,errorThrown]);
				},
				done:function(data,textStatus,jqx){
					$boxer.triggerHandler('done', [data,textStatus,jqx]);
				}
				,
				exn:function (jqx, textStatus,errorThrown) {
					$boxer.triggerHandler('exn',[jqx,textStatus,errorThrown]);
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{
						abort:{
							value:errAlertedEle.abort
						}
,
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