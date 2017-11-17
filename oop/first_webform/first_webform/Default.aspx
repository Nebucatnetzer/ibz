<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="first_webform.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                Dies ist ein Test.
            </h1>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>


            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </p>

        <p>
            Wählen Sie ihre Upgrade Optionen
        </p>
        <p>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="27px"></asp:CheckBoxList>

        </p>

        <p>


        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Collect Checkboxes" />

        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Checkbox Label"></asp:Label>

        </p>
    </form>
</body>
</html>
