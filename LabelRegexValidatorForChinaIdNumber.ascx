<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LabelRegexValidatorForChinaIdNumber.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.LabelRegexValidatorForChinaIdNumber" %>

<%@ Register src="LabelRegexValidator.ascx" tagname="LabelRegexValidator" tagprefix="uc1" %>

<uc1:LabelRegexValidator ID="LabelRegexValidator1" runat="server" 	 
	
	tip="China Id:"  invalidMsg="Invalid Id Number Format." />

