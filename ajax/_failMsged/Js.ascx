<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax._failMsged.Js" %>
<%-- obsolte --%>
<% #if (false) %>
<script>
<% #endif %>
	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer = child.parentElement
		,
			$boxer = $(boxer)
		,children = boxer.children;
		var i=0;

		var ajax = boxer.children[i++];
		var $ajax=$(ajax);


		var msger = boxer.children[i++]
			,
			$msger = $(msger)
			,
			state = children[i++]
			,
			$state = $(state)
			,
			showMsg = function (msg) {
				<%--$ajax.hide();--%>
				msger.msg(msg);
				$msger.show();
			}
			,
			_failData = {},
			on= function () {
				$ajax.on(
					'fail'
					,
					function (e,jqXhr, textStatus, errorThrown) {
						if (textStatus==="abort") { <%-- Possible values (besides null) are "timeout", "error", "abort", and "parsererror". --%>
							trig.fail(jqXhr,textStatus,errorThrown);
						} else {
							_failData.jqx = jqXhr;
							_failData.errorThrown = errorThrown;
							_failData.textStatus = textStatus;
							showMsg("提交失败："+ textStatus +", "+errorThrown+", "+ jqXhr.responseText);

						}
					}
				);

				$ajax.on(
					'done'
					,
					function (e,data, textStatus,jqx) {
						trig.done(data, textStatus,jqx)
					}
				);

				$msger.on(
					'oked',
					function(){
						trig.fail(_failData.jqx,_failData.textStatus,_failData.errorThrown);
					}
				);


			}
			
			,
				
			trig={
				done:function(data, textStatus,jqx){
					$boxer.triggerHandler('done',[data, textStatus,jqx]);
				}
				,
				fail:function (jqx,textStatus,errorThrown) {
					$boxer.triggerHandler('fail',[jqx,textStatus, errorThrown]);
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{
						post: { value: ajax.post }
						,
						send: { value: ajax.send }
						,
						get: {value:ajax.get}
						,
						url: {
							set: function (u) {
								ajax.url=u
							}
						}
						,
						cfg: {
							get: function () {
								return ajax.cfg;
							}
						}
							
					}
				);
			},
			ini = function () {
				$msger.hide();
				//$abortable.css({
				//	'width':'100%'
				//	,'height':'100%'
				//	,'top':'0px'
				//	,'left':'0px'
				//});
				
			}
			,
			ready = function () {
				ini(); on(); pub();
			}
		;
		ready();
	}
<% #if (false) %>
</script>
<% #endif %>