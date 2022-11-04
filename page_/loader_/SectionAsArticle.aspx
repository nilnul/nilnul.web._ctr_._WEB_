<%@ Page Title="" Language="C#" MasterPageFile="~/_master/Html.Master" AutoEventWireup="true" CodeBehind="SectionAsArticle.aspx.cs" Inherits="nilnul.web._ctr_._WEB_.page_.loader_.SectionAsArticle" %>

<%@ Register Assembly="nilnul.web._js_.WEB._CTR_" Namespace="nilnul.web.js._web._ctr.scripts_" TagPrefix="cc3" %>

<%@ Register Assembly="nilnul.web._css_.WEB._CTR_" Namespace="nilnul.web.css._web._ctr.style_" TagPrefix="cc2" %>

<%@ OutputCache Duration="3600000" VaryByCustom="l" VaryByParam="none" %>


<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul.web._ctr.enCn_" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

	<cc2:style__Default ID="Style__Default1" runat="server" />
	<cc3:scripts__JqPolyNn ID="Scripts__JqPolyNn1" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div id="dock" runat="server">
		<cc1:enCn__PerModule ID="EnCn__PerModule1" runat="server">
			<asp:View ID="View1" runat="server">Loading Contents, please wait...<br />
				If the loading is not completed in a long time, please contact us.</asp:View>
			<asp:View ID="View2" runat="server">正在加载内容，请等待...<br />
				如果长时间没有加载完成，请联系网站维护人员</asp:View>
		</cc1:enCn__PerModule>
	</div>
	<script>
		(function (dock) {
			<%--get the ascx url --%>
			var $dock = $(dock);

			var url = nilnul.queryString("url");
			$dock.text("正在加载 " + url + " ...");

			$.ready(

					$(dock).load(
						url,
						<%--{},--%>

						function (response, status, xhr) {

							if (status === "error") {

								var msg = "加载出现了错误:";

								$(dock).html(msg + xhr.status + " " + xhr.statusText + "<hr/>" + response);


							}
							else {
								<%--MathJax.Hub.Queue(["Typeset", MathJax.Hub, dock]);--%>
								var sections = $dock.children("section");
								if (sections.length === 1) {
									nilnul.article(
										sections[0], 1
									);
								}
								else {
									nilnul.article(
										dock, 1
									);

								}


							}
						}



					)


			);

		})(
			document.getElementById("<%=dock.ClientID%>")

		);


	</script>

</asp:Content>
