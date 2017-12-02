<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="MasterPageExample.aspx.cs" Inherits="_2017_12_02_states.MasterPageExample" %>

<%@ Register Src="~/UserName.ascx" TagPrefix="uc1" TagName="UserName" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<uc1:UserName runat="server" id="UserName" />
</asp:Content>
