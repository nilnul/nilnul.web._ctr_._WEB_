<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax.Js" %>
<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>=function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)
			,children=boxer.children
			,
			i=0,
			state=children[i++]
			,
			$state=$(state)
			,jqx
			, handler = $boxer.data("handler")
			,
			url = $boxer.data("url") || handler
			,
			_getSid
			,
			_cfg = {
				contentType: "application/json; charset=utf-8"<%--contentType is the type of data you're sending, so application/json; charset=utf-8 is a common one, as is application/x-www-form-urlencoded; charset=UTF-8, which is the default.--%>
				,processData:false <%-- By default, data passed in to the data option as an object (technically, anything other than a string) will be processed and transformed into a query string, fitting to the default content-type "application/x-www-form-urlencoded". If you want to send a DOMDocument, or other non-processed data, set this option to false.--%>
				<%--,dataType:"json"--%> <%--  dataType is what you're expecting back from the server: json, html, text, etc. jQuery will use this to figure out how to populate the success function's parameter.
	
	Data to be sent to the server. It is converted to a query string, if not already a string. It's appended to the url for GET-requests. See processData option to prevent this automatic processing. Object must be Key/Value pairs. If value is an Array, jQuery serializes multiple values with same key based on the value of the traditional setting (described below).--%>
			} <%-- to store default options --%>
			,
			send = function (options) {
				$state.text("提交中...");
				$state.attr("title", "提交中");
				<%--
				options.contentType|| (options.contentType=  _cfg.contentType || "application/json; charset=utf-8"); 
				options.type || (options.type ="POST" );
				options.url || (options.url = url);
				options.processData ||(options.processData=false);
				options.dataType || (options.dataType= "json");
				--%>
				<%--
				options.data = JSON.stringify(options.data);
				--%>

				var optionsMerged = $.extend(
					{}, _cfg, options, { data: JSON.stringify(options.data) }
					,
				);
				var sid = nilnul.func.exe(_getSid);

				if (sid) {
					optionsMerged.headers = optionsMerged.headers || {};
					$.extend(
						optionsMerged.headers
						,
						{
							"<%= nilnul.web.http._request_._head_.key_.Authorization.Name%>": "Bearer " + sid
						}
					);
				}
				
				jqx = $.ajax(
					optionsMerged
				).done(
					function (response, textStatus,jqx) {
						<%--if (response) {
							if (typeof(response)==="string") {
								response=$.parseJSON(response);
							}
						}else {
							response=null;
						}--%>
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
					contentType: "application/json; charset=utf-8" 
					,type:"POST"
					, 
					data:(data)
					, 
					dataType: "json"
				});
			}
			,
			get = function (url) {
				send({
					contentType: "application/json; charset=utf-8" 
					,type:"GET"
					,url:url||handler
					,processData: false
				});
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
			, 
			ini = function () {
			}
			,on=function () {
			}
			,pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						beforeSend: {<%--
	The following will not work; doc says we can modify Jqr; docs doesn't say we can modify options; by our trek we found options seem to be unmodifiable.
						o = o || {};
						o.headers = o.headers || {};
						$.extend(
							o.headers
							,
							{
							"<%= nilnul.web.http._request_._head_.key_.Authorization.Name%>": "Bearer " + sid
							}
						);
					}--%>
							set: function (f) { <%-- par=func(jqx, opts)--%>
								if (typeof(f)==="function") {
									_cfg.beforeSend = f;
								}
							}
						}
						,
						getSid: {
							set: function (g) {
									_getSid = g;
							}
						}
						,

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
						handler:{
							get:function(){
								return _cfg.url || url;
							}
							,
							set: function (v) {
								_cfg.url = v;
								url=v;
							}
						}
						,
						url:{
							get:function(){
								return _cfg.url || url;
							}
							,
							set: function (v) {
								_cfg.url = v;
								url=v;
							}
						}
						, cfg: {
							<%--set: function (options) {
								_cfg = options;
							}
							,--%>
							get: function () {
								return _cfg;
							}
						}

					}
				);
			}
			,
			ready = function () {
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