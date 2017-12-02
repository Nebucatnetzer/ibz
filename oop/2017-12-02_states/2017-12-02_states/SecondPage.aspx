<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SecondPage.aspx.cs" Inherits="_2017_12_02_states.SecondPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBoxSecondPage" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="ButtonSecondPage" runat="server" Text="Button" OnClick="ButtonSecondPage_Click"/>
        </div>
    </form>
</body>
</html>
