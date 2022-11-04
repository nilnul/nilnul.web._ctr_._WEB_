<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax._cors.Js" %>
<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>=function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)
			,children=boxer.children
			,
			i = 0
			,
			ajax=children[i++]
			,
			$ajax=$(ajax)
			, 
			ini = function () {
				ajax.cfg.xhrFields= {
					withCredentials: true
				};
				ajax.cfg.crossDomain = true;
			}
			,
			on = function () {
				$ajax.on(
					'fail'
					,
					function (e,jqx, textStatus, errorThrown) {
						trig.fail(jqx, textStatus, errorThrown);
					}
				);

				$ajax.on(
					'done'
					,
					function (e,response, textStatus,jqx) {
						trig.done(response, textStatus, jqx);
					}
				);

			}
			,trig={
				done:function(response, textStatus,jqx){
					$boxer.triggerHandler("done",[response, textStatus,jqx]);
				}
				,
				fail:function (jqx, textStatus,errorThrown ) {
					$boxer.triggerHandler("fail", [jqx, textStatus,errorThrown]);
				}
			}
			,pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						beforeSend: {
							set: function (f) { <%-- par=func(jqx, opts)--%>
								ajax.beforeSend = f;
							}
						}
						,
						getSid: {
							set: function (g) {
								ajax.getSid = g;
							}
						}
						,
						abort:{
							value:function(){
								ajax.abort();
							}
						}
						,
						send:{
							value:ajax.send
						}
						
						,
						post:{value:ajax.post}
						,
						get: { value: ajax.get }
						,
						url:{
							get:function(){
								return ajax.url;
							}
							,
							set:function(v){
								ajax.url=v;
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