<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.ajax.cors.failMsged.errMsged._fill.Js" %>
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

			}
			,
			on=function(){
				$ajaxEle.on(
					"success"
					,function (e, data) {
						$plateEle.html(data);
						nilnul.ele_.parent.iniChildren(plateEle);
						stateEle.txt = "";
						trig.filled();
					}
				);
			}
			,trig={
				filled:function () {
					$boxer.triggerHandler("filled");
				}
			}
			,pub = function () {
				Object.defineProperties(
					boxer
					,
					{
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
								ajaxEle.url=val;
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
