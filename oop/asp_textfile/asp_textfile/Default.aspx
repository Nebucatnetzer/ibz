<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="asp_textfile.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="UserInputBox" runat="server" Height="167px" OnTextChanged="UserInputBox_TextChanged" Width="244px"></asp:TextBox>
        </div>
        <p>
            <asp:CheckBox ID="ShowUserInputCheckBox" runat="server" OnCheckedChanged="ShowUserInputCheckBox_CheckedChanged" Text="Show User Input" />
        </p>
        <p>
            <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />
        </p>
    </form>
</body>
</html>
