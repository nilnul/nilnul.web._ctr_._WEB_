<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._ajax_._state.Js" %>
<% #if false %>

<script>

	<% #endif %>
	; var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer = child.parentElement;
		var children = boxer.children;
		var i = 0;

		var status = children[i++];

		var $boxer = $(boxer);
		var $status = $(status);

		var jqx;
		var handler = $boxer.data("handler");

		var send = function (data) {
			$status.text("提交中...");

			<%-- 
	$.ajaxSetup({ contentType: "application/json; charset=utf-8" });
				--%>

			jqx = $.post(handler, data, "json").done(

				function (response) {
					if (response) {
						if (typeof (response) === "string") {
							response = $.parseJSON(response);
						}

					} else {
						response = null;
					}
					$status.text("成功");

					trig.done(response);
					$status.text("");
				}
			).fail(
				function (jqXhr, textStatus, errorThrown) {
					$status.text("失败");
					trig.fail(textStatus, errorThrown);
					$status.text("");

				}
			).always(
				function () {
					$status.text("结束");
					trig.always();
					$status.text("");
				}
			);
			;
		}

			, ajax = function (options) {
				$status.text("提交中...");
				options.contentType || (options.contentType = "application/json; charset=utf-8");
				options.type || (options.type = "POST");
				options.url || (options.url = handler);
				options.processData || (options.processData = false);
				options.dataType || (options.dataType = "json");
				options.data = JSON.stringify(options.data);
				jqx = $.ajax(options).done(

					function (response) {
						if (response) {
							if (typeof (response) === "string") {
								response = $.parseJSON(response);
							}

						} else {
							response = null;
						}
						$status.text("成功");

						trig.done(response);
						$status.text("");


					}
				).fail(
					function (jqXhr, textStatus, errorThrown) {
						$status.text("失败");
						trig.fail(textStatus, errorThrown);
						$status.text("");

					}
				).always(
					function () {
						$status.text("结束");
						trig.always();
						$status.text("");
					}
				);

			},
			post = function (data) {
				$status.text("提交中...");

			<%-- 
	$.ajaxSetup({ contentType: "application/json; charset=utf-8" });
				--%>

				jqx = $.ajax({
					contentType: "application/json; charset=utf-8"
					, type: "POST"
					, url: handler
					,
					data: JSON.stringify(data)
					, processData: false
					,
					dataType: "json"
				}).done(

					function (response) {
						if (response) {
							if (typeof (response) === "string") {
								response = $.parseJSON(response);
							}

						} else {
							response = null;
						}
						$status.text("成功");

						trig.done(response);
						$status.text("");


					}
				).fail(
					function (jqXhr, textStatus, errorThrown) {
						$status.text("失败");
						trig.fail(textStatus, errorThrown);
						$status.text("");

					}
				).always(
					function () {
						$status.text("结束");
						trig.always();
						$status.text("");
					}
				);
				;
			}

			;

		var trig = {
			done: function (response) {
				$boxer.triggerHandler("done", response);
			}
			,
			fail: function (textStatus, errorThrown) {
				$boxer.triggerHandler("fail", [textStatus, errorThrown]);
			}
			,
			always: function () {
				$boxer.triggerHandler("always");
			}
		};
		var pub = function () {
			Object.defineProperties(
				boxer
				,
				{
					abort: {
						value: function () {
							jqx && jqx.abort();
						}
					}
					,
					send: {
						value: send
					}
					, ajax: { value: ajax, writable: false }
					,
					post: { value: post }
					,
					handler: {
						get: function () {
							return handler;
						}
						,
						set: function (v) {
							handler = v;
						}
					}
				}


			);
		};

		var ini = function () {
			
		}
			, ready = function () {
				ini();
				pub();
			};

		ready();
	};

	<% #if false %>

</script>

<% #endif %>