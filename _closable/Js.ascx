<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._closable.Js" %>
<%@ OutputCache VaryByParam="l" Duration="36000000" %>

<% #if false %>
<script>
<% #endif %>	
	;var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer = child.parentElement
			,
			$boxer = $(boxer)
			,
			children = boxer.children
			,
			i = 0
			,
			titleBar = children[i++]
			,
			$titleBar = $(titleBar)
				,
				titleTxt = titleBar.children[0]
				,
				$titleTxt=$(titleTxt)
				,
				closeButton = titleBar.children[1]
				,
				$closeButton = $(closeButton)
			,
			content = children[i++]
			,
			$content = $(content)
			,
			tipEle = children[i++]
			,
			$tipEle=$(tipEle)
			,
			on = function () {
				$closeButton.click(

					function (e, data) {
						$closeButton.hide();
						<%-- detach from doc--%>
						$boxer.remove();
						trig.closed(
						);
					}
				)
			}
			,
			trig = {
				closed: function () {
					$boxer.triggerHandler('closed');
				}
				
			},

			pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						loadContent: {
							value: function (c) {
								$content.empty().append(c);
							}
						}
						,
						heading: {
							set: function (t) {
								$titleTxt.text(t);
							}
						}
					}
				);
			},
			ini = function () {
			}
			, ready = function () {
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