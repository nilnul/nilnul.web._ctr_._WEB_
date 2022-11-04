<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js1.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax.Js1" %>
<%@ OutputCache Duration="36000000" VaryByParam="none" Shared="true" %>
<%-- default to form-data --%>
<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>=function (child) {
		var boxer = child.parentElement
			, $boxer = $(boxer)
			, children = boxer.children
			,
			i = 0,
			state = children[i++]
			,
			$state = $(state)
			, jqx
			,
			_getSid
			,
			_cfg = {
				 <%--contentType: false--%><%--    contentType is the type of data you're sending, so application/json; charset=utf-8 is a common one, as is application/x-www-form-urlencoded; charset=UTF-8, which is the default.
	to upload files using FormData, it would be enough to override it with:
'Content-Type': 'multipart/form-data'

But alas, it didn’t work, server couldn’t parse the files I was uploading. I’ve wasted about half an hour, and then noticed that simple HTML form was setting something else:

Content-Type: multipart/form-data; boundary=----WebKitFormBoundaryIn312MOjBWdkffIM
It had this boundary thing I didn’t know anything about.

Then I started searching around the internet and found the solution. To set the correct boundary, I had to explicitly delete Content-Type header. In that case browser will set the correct boundary itself.

Adding this line solved it.

// Remove 'Content-Type' header to allow browser to add
// along with the correct 'boundary'
delete options.headers['Content-Type'];
	--%>
				<%--,processData:false --%><%-- 
	we must set this to false for multi-part form data
	By default, data passed in to the data option as an object (technically, anything other than a string) will be processed and transformed into a query string, fitting to the default content-type "application/x-www-form-urlencoded". If you want to send a DOMDocument, or other non-processed data, set this option to false.--%>
				<%--,dataType:"json"--%> <%--  dataType is what you're expecting back from the server: json, html, text, etc. jQuery will use this to figure out how to populate the success function's parameter.
	
	Data to be sent to the server. It is converted to a query string, if not already a string. It's appended to the url for GET-requests. See processData option to prevent this automatic processing. Object must be Key/Value pairs. If value is an Array, jQuery serializes multiple values with same key based on the value of the traditional setting (described below).--%>
				<%--,type:"POST" --%>
			} <%-- to store default options --%>
			,
			send = function (options) {
				var optionsMerged = $.extend(
					{}, _cfg, options
				);
				let u = optionsMerged.url;
				if (u === null || u === (void null)) {
					return;
				}
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
					function (response, textStatus, jqx) {
						<%--if (response) {
							if (typeof(response)==="string") {
								response=$.parseJSON(response);
							}
						}else {
							response=null;
						}--%>
						$state.attr("titile", "成功");
						trig.done(response, textStatus, jqx);
						$state.text("");
					}
				).fail(
					function (jqx, textStatus, errorThrown) {
						$state.text("失败");
						$state.attr(
							"title",
							textStatus + ":" + JSON.stringify(errorThrown)
						);
						trig.fail(jqx, textStatus, errorThrown);
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
					type: "POST"
					,
					data: (data)

				});
			}
			,
			get = function (url) {
				send({
					type: "GET"
					, url: url
				});
			}
			, trig = {
				done: function (response, textStatus, jqx) {
					$boxer.triggerHandler("done", [response, textStatus, jqx]);
				}
				,
				fail: function (jqx, textStatus, errorThrown) {
					$boxer.triggerHandler("fail", [jqx, textStatus, errorThrown]);
				}
			}
			,
			ini = function () {
				<%--$.extend(_cfg, {url: $boxer.data("url")});--%>
			}
			, on = function () {
			}
			, pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						beforeSend: {
							set: function (f) { <%-- par=func(jqx, opts); modify opts seem not working.--%>
								if (typeof (f) === "function") {
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

						abort: {
							value: function () {
								jqx && jqx.abort();
							}
						}
						,
						send: {
							value: send
						}

						,
						post: { value: post }
						, get: { value: get }
						,

						url: {
							get: function () {
								return _cfg.url;
							}
							,
							set: function (v) {
								_cfg.url = v;

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