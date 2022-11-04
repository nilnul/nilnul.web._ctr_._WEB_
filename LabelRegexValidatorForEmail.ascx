<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LabelRegexValidatorForEmail.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.LabelRegexValidatorForEmail" %>

<%@ Register src="LabelRegexValidator.ascx" tagname="LabelRegexValidator" tagprefix="uc1" %>

<uc1:LabelRegexValidator ID="LabelRegexValidator1" runat="server" regex="(^(?:)$)|(^(?:[a-zA-Z0-9_-]+\\.){0,2}(?:[a-zA-Z0-9_-]+)@(?:[a-zA-Z0-9_-]+\\.)+[a-zA-Z]{2,4}$)" tip="Email:" invalidMsg="Invalid Email Address Format." />

