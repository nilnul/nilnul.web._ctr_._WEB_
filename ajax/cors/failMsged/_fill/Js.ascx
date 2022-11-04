<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax.cors.failMsged._fill.Js" %>
<%@ OutputCache VaryByParam="none" Duration="36000000" Shared="true" %>
<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)
			,children=boxer.children
			,i=0

			,plateEle=children[i++]
			,$plateEle=$(plateEle)

			,ajaxEle=children[i++]
			,$ajaxEle=$(ajaxEle)

			,stateEle=children[i++]
			, $stateEle = $(stateEle)
			,
			_send = function (options) {
				$plateEle.hide();
				$ajaxEle.show();
				stateEle.txt = "正在加载...";
				ajaxEle.send(options);
			}
			,
			_post = function (data) {
				_send({data:data, type:"POST"});
			}
			,
			_get = function (url) {
				_send({url:url, type:"GET"});
			}

			,
			_fill = _get
			,
			ini = function () {
				$plateEle.hide();
			}
			,
			on=function(){
				$ajaxEle.on(
					"done"
					,function (e, data) {
						$plateEle.html(data);
						$stateEle.hide();
						$ajaxEle.hide();
						$plateEle.show();
						nilnul.ele_.parent.iniChildren(plateEle);
						stateEle.txt = "filled >>>";
						trig.filled();
						stateEle.txt = "";
					}
				);

				$ajaxEle.on(
					"fail"
					, function () {
						stateEle.txt="加载失败";
						$ajaxEle.hide();
						$plateEle.hide();

					}
				);

			}
			,trig={
				filled:function () {
					$boxer.triggerHandler("filled");
				},
				urlSet:function () {
					$boxer.triggerHandler("urlSet");
				}

			}
			,pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						beforeSend: {
							set: function (f) { <%-- par=func(jqx, opts)--%>
								ajaxEle.beforeSend = f;
							}
						}
						,
						getSid: {
							set: function (g) {
								ajaxEle.getSid = g;
							}
						}
						,

						post: { value: _post }
						,
						send: { value: _send }
						,
						get: { value: _get }
						,
						fill: {value:_get}
						,
						url: {
							set: function (val) {
								ajaxEle.url = val;
								trig.urlSet();
							}
							,
							get: function () {
								return ajaxEle.url;
							}

						}
						,
						cfg: {
							get: function () {
								return ajaxEle.cfg;
							}
						}
					}
				);
			}
			,
			ready=function () {
				ini();on();pub();
			}
		;
		ready();
	};
	<% #if false %>
</script>
<% #endif %>
