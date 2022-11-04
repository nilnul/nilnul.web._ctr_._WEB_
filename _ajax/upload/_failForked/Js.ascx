<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax._failForked.Js" %>
<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>=function (child) {
		var boxer=child.parentElement;
		var $boxer=$(boxer);

		var children=boxer.children;
		var i=0
			,uploadCtr=children[i++]
				,$uploadCtr=$(uploadCtr)
		;

		var state=children[i++];
		var $state=$(state)
			,on=function () {
				$uploadCtr.on(
					"fail"
					,
					function (e,jqx,textStatus,errorThrown) {
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
							trig.exn(jqx,textStatus,errorThrown);
							$state.text("");
						}
					}
				);
				$uploadCtr.on(
					"done",function (e,response, textStatus, jqx) {
						trig.done(response,textStatus,jqx);
					}
				);
			}

			,trig={
				done:function(response, textStatus, jqx){
					$boxer.triggerHandler("done",[response,textStatus,jqx]);
				}
				,
				err:function (jqx, textStatus,errorThrown) {
					$boxer.triggerHandler("err", [jqx,textStatus,errorThrown]);
				}
				,
				exn:function (jqx, textStatus,errorThrown) {
					$boxer.triggerHandler("exn", [jqx,textStatus,errorThrown]);
				}
			}
			,pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						abort:{
							value:uploadCtr.abort
						}
						,
						post:{value: uploadCtr.post}
						,
						url:{
							get:function(){
								return uploadCtr.url;
							}
							,
							set:function(v){
								uploadCtr.url=v;
							}
						}
					}
				);
			}
			,ini = function () {

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