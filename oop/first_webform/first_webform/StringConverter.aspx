<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StringConverter.aspx.cs" Inherits="first_webform.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                String Converter
            </h1>
        </div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Convert to UpperCase" />
        </p>
        <p>
        <asp:Label ID="Label1" runat="server" Text="Label for UpperCase String">
        </p>

        </asp:Label>

       
    </form>
</body>
</html>
