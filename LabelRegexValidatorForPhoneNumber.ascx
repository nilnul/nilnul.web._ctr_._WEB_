<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LabelRegexValidatorForPhoneNumber.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.LabelRegexValidatorForPhoneNumber" %>

<%@ Register src="LabelRegexValidator.ascx" tagname="LabelRegexValidator" tagprefix="uc1" %>

<uc1:LabelRegexValidator ID="LabelRegexValidator1" runat="server" 	 
	
	tip="Phone:"  invalidMsg="Invalid Format." />

