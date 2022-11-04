<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax_._cors.Js" %>
<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>=<%=unique_func_name %>||function (child) {
		"use strict";
		var boxer=child.parentElement
			,$boxer=$(boxer)
			,children=boxer.children
			,
			i=0,
			state=children[i++]
			,
			$state=$(state)
			,jqx
			,url=$boxer.data("url") <%-- not named handler in line with Jquery; --%>
			,send = function (options) {
				$state.text("sending...");
				$state.attr("title", "提交中");

				options.contentType|| (options.contentType="application/json; charset=utf-8"); 
				options.type || (options.type ="POST" );
				options.url || (options.url = url);
				(options.processData===void null ) ||(options.processData=false);
				options.dataType || (options.dataType= "json"); <%-- uploaded data --%>
				options.data = options.data && JSON.stringify(options.data);
				options.xhrFields= {
    withCredentials: true
				};
				options.crossDomain = true;


				jqx=$.ajax(options).done(
					function (response, textStatus,jqx) {
						if (response) {
							if (typeof(response)==="string") {
								response=$.parseJSON(response);
							}
						}else {
							response=null;
						}
						$state.attr("titile", "成功");
						trig.done(response, textStatus,jqx);
						$state.text("");
					}
				).fail(
					function (jqx,textStatus,errorThrown) {
						$state.text("失败");
						$state.attr(
							"title",  
							textStatus+ ":" + JSON.stringify(errorThrown)
						);
						trig.fail(jqx, textStatus,errorThrown);
						$state.text("");

					}
				).always(
					function () {
					}
				);
			}
			,
			post = function (data) {
				send({
					
					type:"POST"
					, 
					data:data
					,processData: false
					
				});
			}
			,
			get = function (_url) {
				send({
					type:"GET"
					,url:_url||url
					,processData: false
				});
			}
			, 
			ini = function () {
			}
			,on=function () {
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
						abort:{
							value:function(){
								jqx && jqx.abort();
							}
						}
						,
						send:{
							value:send
						}
						
						,
						post:{value:post}
						,get:{value:get}
						,
						url:{
							get:function(){
								return url;
							}
							,
							set:function(v){
								url=v;
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