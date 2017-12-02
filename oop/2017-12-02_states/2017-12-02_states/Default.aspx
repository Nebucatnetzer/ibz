<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_2017_12_02_states.Default" %>

<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBoxDefault" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="ButtonDefault" runat="server" Text="Button" OnClick="ButtonDefault_Click"/>
        </div>
        <uc1:Footer runat="server" id="Footer" />
    </form>
</body>
</html>
