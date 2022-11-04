<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.radio_._horizon.Js" %>
<%@ OutputCache Shared="true" VaryByParam="none" Duration="36000000" VaryByCustom="l" %>

<% #if false%>
<script>
	<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var 
			boxer=child.parentElement
			,
			$boxer=$(boxer)
			,
			children=boxer.children
			,
			i=0
			,
			btnsHolder=children[i++]
				,$btnsHolder=$(btnsHolder)
			,
			_btn_setUnselected=function ($btn, btn) {
				$btn.css({
					cursor:"pointer"
				});
				$btn.removeClass(
					"<% =classSelected %>"
				);
				$btn.addClass(
					"<% =classUnselected %>"
				);
			}
			,
			_btn_setUnselected_ofBtn=function (btn) {
				var $btn=$(btn);
				$btn.css({
					cursor:"pointer"
				});
				$btn.removeClass(
					"<% =classSelected %>"
				);
				$btn.addClass(
					"<% =classUnselected %>"
				);
			}
			,
			_btn_setUnselected_ofIndex=function (index) {
				_btn_setUnselected(get$btns()[index]);
			}
			,
			_btn_setSelected=function ( $btn, btn) {
				$btn.css({
					cursor:"default"
				});
				
				$btn.removeClass(
					"<% =classUnselected %>"
				);

				$btn.addClass(
					"<% =classSelected %>"
				);
			}
			,
			_btn_setSelected_ofBtn=function (btn) {
				var $btn=$(btn);
				$btn.removeClass(
					"<% =classUnselected %>"
				).addClass(
					"<% =classSelected %>"
				);
			}
			,
			_isSelected=function ($btn,btn) {
					return $btn.hasClass("<% =classSelected %>");
			}
			,
			_isSelected_ofBtn=function (btn) {
					return $(btn).hasClass("<% =classSelected %>");
			}
			,
			_isSelected_ofIndex=function (index) {
				return _isSelected(get$btns()[index]);
			}
			,
			_index_get=function () {
				return get$btns().get().findIndex(
					function (e,i,str) {
						return _isSelected_ofBtn(e);
					}
				);
			}
			,
			_selected_get=function () {
				var index= get$btns().get().findIndex(
					function (e,i,str) {
						return _isSelected_ofBtn(e);
					}
				);
				return index===-1? null:index;
			}
			,
			index_set=function (i) {
				if (i<0) {
					i=-1;
				}else {
					i%=get$btns().length;
				}
				if (i!==index_get()) {
					_index_set_none();
					_btn_setUnselected_ofIndex(i);
					trig.changed();
				}
			}
			,
			_index_set_none=function(){
				$btnsHolder.children("button").css({
					cursor:"pointer"
				}).removeClass(
					"<% =classSelected %>"
				).addClass(
					"<% =classUnselected %>"
				);
				<%--
				for (var i = 0; i < $boxer.children("button").length; i++) {
					_btn_setUnselected_ofIndex(i);
				}--%>
			}
			,get$btns=function () {
				return $btnsHolder.children("button");
			}
			,
			on=function(){
				$btnsHolder.on("click","button", 
					function(e){
						var currentBtn=e.currentTarget;
						var selected=_isSelected_ofBtn(currentBtn);
						if (selected) {
							_btn_setUnselected_ofBtn(currentBtn);
						}else {
							_index_set_none();
							_btn_setSelected_ofBtn(currentBtn);
						}
						trig.changed();
					}
				);
			}
			,
			trig={
				changed:function(){
					$boxer.triggerHandler('changed');
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{
						index:{
							get:_index_get,
							set:index_set
						}
						,
						selected:{
							get:_selected_get
						}
						,
						fit$:{
							value:function ($parentOfHolders) {
								$btnsHolder.empty();
								var contents2b=$parentOfHolders.children().get();

								for (var i = 0;i<contents2b.length; i++) {
									$btnsHolder.append(
										$("<button>").css("height","100%").append(contents2b[i])
									);
								}
								<%--
								$parentOfHolders.children().each(function (i,e) {
									 
								});
								var $btns2beInserted=$parentOfHolders.children().map(function (index, ele){
									return ;
								});--%>
								<%--
								$btnsHolder.empty().append(
									$parentOfHolders.children().map(function (index, ele){
										return $("<button>").append(ele);
									})
								);--%>
							}
						}
						,
						align: {
							set: function (v) {
								$btnsHolder.css(
									"justify-content"
									,
									v
								);
							}
						}
					}
				);
			}, 
			ini = function () {
			}
			,
			ready=function () {
				ini();
				on();
				pub();
			}
		;
		ready();
	}
	;
	<% #if false%>
</script>
<% #endif %>
