<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LabelPasswordRegexed.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.LabelPasswordRegexed" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ Register src="PasswordRegexed.ascx" tagname="PasswordRegexed" tagprefix="uc1" %>

<cc1:KeyHidden ID="KeyHidden1" runat="server" />
<label id="label1" runat="server"></label>

<uc1:PasswordRegexed ID="PasswordRegexed1" runat="server" />

