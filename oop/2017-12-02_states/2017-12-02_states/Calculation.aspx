<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculation.aspx.cs" Inherits="_2017_12_02_states.Calculation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="LabelValue1" runat="server" Text="Value 1"></asp:Label>
        <asp:TextBox ID="TextBoxValue1" runat="server"></asp:TextBox>
        <div>
            <asp:Label ID="LabelValue2" runat="server" Text="Value 2"></asp:Label>
            <asp:TextBox ID="TextBoxValue2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:RadioButton ID="RadioButtonSubtraction" runat="server" Text="Subtraction"/>
            <br />
            <br />
            <asp:RadioButton ID="RadioButtonAddition" runat="server" Text="Addition"/>
            <br />
            <br />
            <asp:Button ID="ButtonCalculate" runat="server" Text="Calculate" OnClick="ButtonCalculate_Click" />
&nbsp;<asp:Label ID="ResultLabel" runat="server" Text="Result:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBoxResult" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
