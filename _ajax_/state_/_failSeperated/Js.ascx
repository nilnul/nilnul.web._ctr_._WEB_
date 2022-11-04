<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_.state_._failSeperated.Js" %>
<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>=function (child) {
		var boxer=child.parentElement;
		var $boxer=$(boxer);

		var children=boxer.children;
		var i=0;

		var state=children[i++];
		var $state=$(state);
		
		var jqx;
		var url=$boxer.data("url");

		var post = function (data) {
			$state.text("提交中...");

			<%-- 
	$.ajaxSetup({ contentType: "application/json; charset=utf-8" });
				--%>

			jqx=$.ajax({
				contentType: "application/json; charset=utf-8" <%--
	contentType (default: 'application/x-www-form-urlencoded; charset=UTF-8')

Type: Boolean or String 

When sending data to the server, use this content type. Default is "application/x-www-form-urlencoded; charset=UTF-8", which is fine for most cases. If you explicitly pass in a content-type to $.ajax(), then it is always sent to the server (even if no data is sent). As of jQuery 1.6 you can pass false to tell jQuery to not set any content type header. Note: The W3C XMLHttpRequest specification dictates that the charset is always UTF-8; specifying another charset will not force the browser to change the encoding. Note: For cross-domain requests, setting the content type to anything other than application/x-www-form-urlencoded, multipart/form-data, or text/plain will trigger the browser to send a preflight OPTIONS request to the server.
	--%>
				,type:"POST"
				,url:url
				, 
				data:JSON.stringify(data)
				,processData: false
				,
				xhrFields: {
					withCredentials: true <%-- for cors request --%>
				}
				, 
				dataType: "json"
			}).done(

				function (response, textStatus, jqx) {
					if (response) {
						if (typeof(response)==="string") {
							response=$.parseJSON(response);
						}
    
					}else {
						response=null;
					}
					$state.text("成功");

					trig.done(response, textStatus,jqx);
					$state.text("");
				}
			).fail(
				function (jqx,textStatus,errorThrown) {

					<%-- 
	$.ajaxSetup({ contentType: "application/json; charset=utf-8" });
				--%>

			<%--
	error
Type: Function( jqXHR jqXHR, String textStatus, String errorThrown )

A function to be called if the request fails. The function receives three arguments: The jqXHR (in jQuery 1.4.x, XMLHttpRequest) object, a string describing the type of error that occurred and an optional exception object, if one occurred. Possible values for the second argument (besides null) are 

	"timeout", "error", "abort", and "parsererror"
	
	. When an HTTP error occurs, errorThrown receives the textual portion of the HTTP status, such as "Not Found" or "Internal Server Error." As of jQuery 1.5, the error setting can accept an array of functions. Each function will be called in turn. Note: This handler is not called for cross-domain script and cross-domain JSONP requests. This is an Ajax Event.

	Note: all status(be it error or success):	
	("success", "notmodified", "nocontent", "error", "timeout", "abort", or "parsererror"). --%>
					if (textStatus==="abort" || textStatus==="timeout") {
						$state.text("错误");
						trig.err(jqx, textStatus,errorThrown);
						$state.text("");
					}else {
 						$state.text("异常");
						trig.exception(jqx,textStatus,errorThrown);
						$state.text("");
					}
				}
			).always(
				function (jqx, textStatus, errorThrown) {
					$state.text("结束");
					trig.always(jqx, textStatus, errorThrown);
					$state.text(""); 
				}
			);
			;
		}
			,trig={
				done:function(response, textStatus, jqx){
					$boxer.triggerHandler("done",[response,textStatus,jqx]);
				}
				,
				fail:function (jqx,textStatus,errorThrown) {
					$boxer.triggerHandler("fail", [jqx,textStatus,errorThrown]);
				}
				,
				err:function (jqx, textStatus,errorThrown) {
					$boxer.triggerHandler("err", [jqx,textStatus,errorThrown]);
				}
				,
				exception:function (jqx, textStatus,errorThrown) {
					$boxer.triggerHandler("exception", [jqx,textStatus,errorThrown]);
				}

				,
				always:function(jqx,textStatus,errorThrown){
					$boxer.triggerHandler("always",[jqx,textStatus,errorThrown]);
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
						post:{value:post}
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
			,ini = function () {

			}
			,ready=function () {
				ini();
				pub();
			}
		;

		ready();
	};

	<% #if false %>
</script>
<% #endif %>