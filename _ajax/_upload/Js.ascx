<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax._upload.Js" %>

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
		var url
			,
			post = function (file, name) {
				var formData = new FormData();
				formData.append(name||"file", file); <%--also possible if the file input 's files property--%>
				$state.text("提交中...");
				jqx=$.ajax({
					<%-- Your server script to process the upload --%>
					url: url,
					type: 'POST',
					<%-- Form data --%>
					data: formData,
					<%-- Tell jQuery not to process data or worry about content-type
					 You *must* include these options!--%>
					cache: false,
					contentType: false,
					processData: false
					,
					xhrFields: {
						withCredentials: true <%-- for cors request --%>
					}
					<%--async: true,
						timeout: 60000
						,--%>
					
					<%-- Custom XMLHttpRequest			--%>
					,xhr: function() {
						var myXhr = $.ajaxSettings.xhr();
						if (myXhr.upload) {
							<%-- For handling the progress of the upload --%>
							myXhr.upload.addEventListener(
								'progress',
								function(e) {
									if (e.lengthComputable) {
										trig.progress(
											e.loaded
											,
											e.total
										);
										<%--
										$('progress').attr({
											value: e.loaded,
											max: e.total,
										});--%>
									}
								}
								, 
								false
							);
						}
						return myXhr;
					}
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
					}
				).fail(
					function (jqx,textStatus,errorThrown) {
						$state.text("失败");
						trig.fail(jqx,textStatus,errorThrown);
						$state.text("");
					}
				).always(
					function (jqx, textStatus, errorThrown) {
						trig.always(jqx, textStatus, errorThrown);
						jqx=null;
					}
				);
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
				always:function(jqx,textStatus,errorThrown){
					$boxer.triggerHandler("always",[jqx,textStatus,errorThrown]);
				}
				,
				progress:function (loaded, total) {
					$boxer.triggerHandler("progress",[loaded, total]);
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