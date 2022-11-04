<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._frm.Js" %>
<% #if false %>
<script>
	<% #endif %>
	; var <%=unique_func_name %>=function (child) {
		var
			boxer = child.parentElement
			, $boxer = $(boxer)
			,
			children = boxer.children
			,
			i = 0
			,
			inputParent = children[i++]
			, $inputParent = $(inputParent)

			,
			submitEle = children[i++]
			,
			$submitEle = $(submitEle)
			,
			stateEle = children[i++]
			,
			$stateEle = $(stateEle)
			,
			coverUi= children[i++]
			,
			$coverUi= $(coverUi)
			,
			_cover = function (txt) {
				$coverUi.text(txt||"正在提交...");
				$coverUi.show();
			}
			,
			_uncover = function () {
				$coverUi.hide();
			}
			,
			_loadFeed = function (feedEl) {
				$inputParent.empty().append(feedEl);
				_validate();

				$(feedEl).on(
					"report"
					,
					function () {
						_validate();
					}
				);
			}
			,
			_validate = function () {
				var
					inputEl = inputParent.firstElementChild
				;
				if (!inputEl) {<%--not loaded--%>
					submitEle.disabled = true;
					stateEle.txt = "没有什么要提交的";
					return;
				} 

				if (inputEl.beOk || inputEl.beValid) {
					submitEle.disabled = false;
					stateEle.txt = "";
				} else {
					submitEle.disabled = true;
					stateEle.txt = "需修改表单才能提交";
				}
			}
			,
			on = function () {
				$boxer.submit(
					function (e) {
						_cover();
						e.preventDefault();
						trig.comm();
						
					}
				);
			}
			,
			trig = {
				comm: function () {
					$boxer.triggerHandler("comm");
				}

			}
			,
			pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						val: {
							get: function () {
								return inputParent.firstElementChild && inputParent.firstElementChild.val;
							}
							,
							set: function (x) {
								if (inputParent.firstElementChild) {
									inputParent.firstElementChild.val = x;
								}
							}
						}
						,
						cover: {
							value: _cover
						}
						,
						uncover: {
							value:_uncover
						}
						,
						fitFeed: {
							value:_loadFeed
						}
						, fit: {
							value:_loadFeed

						}
						,
						loadFeed: {
							value:_loadFeed
						}

					}
				);
			},
			ini = function () {
				_validate();
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
