<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.fs._web.upload_._dragDrop.Js" %>
<%@ OutputCache VaryByParam="none" Duration="36000000" Shared="true" %>
<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)
			,children=boxer.children
			,i=0
			,tipEle=children[i++]

			,pitEle=boxer
			,$pitEle=$(pitEle)
			,stateEle=children[i++]
			,$stateEle=$(stateEle)
			,
			ini = function () {

			}

			,

			 dragEnter=function(evt) {
			 	//evt.stopPropagation();
			 	evt.preventDefault();
			 	<%--
			 	$(evt.target).addClass('<%=DropOver%>');--%>
			 	$pitEle.addClass('<%=DropOver%>');

			 }
			, dragLeave=function(evt) {
				//evt.stopPropagation();
				evt.preventDefault();
				<%--
				$(evt.target).removeClass('<%=DropOver%>');
				--%>
				$pitEle.removeClass('<%=DropOver%>');

			},
			drop=function(evt) {
				//evt.stopPropagation();
				evt.preventDefault();
				<%--
				$(evt.target).removeClass('<%=DropOver%>');
				--%>
				$pitEle.removeClass('<%=DropOver%>');


				var files = evt.originalEvent.dataTransfer.files;
				if (files.length > 0) {
					if (window.FormData !== undefined) {
						var data = new FormData();
						for (i = 0; i < files.length; i++) {
							data.append("file"+i, files[i]);
						}
						$.ajax({
							type: "POST",
							url: "<%= Controller%>",
							contentType: false,
							processData: false,
							data: data,
							success: function (res) {
								stateEle.txt="success:"+ JSON.stringify(res);
							}
						});
					} else {
						stateEle.txt=("your browser sucks!");
					}
				}
			}
			,
			on=function(){

				$pitEle.on("dragenter", dragEnter);
				<%--
					//$box.bind("dragexit", dragLeave); this event is deprecated!--%>
				$pitEle.on("dragleave", dragLeave);
				$pitEle.on("dragover",
					function(e){
						e.preventDefault();
					}
				);<%-- per an answer from stackoverflow--%>
				$pitEle.on("drop", drop);
			}
			,trig={
			}
			,pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						
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
