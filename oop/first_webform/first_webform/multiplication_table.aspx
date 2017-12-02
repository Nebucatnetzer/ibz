<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="multiplication_table.aspx.cs" Inherits="first_webform.multiplication_table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css" media="screen">
        table{
        border-collapse:collapse;
        border:1px solid #000000;
        }

        table td{
        border:1px solid #000000;
        }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Table ID="Table1" runat="server">
        </asp:Table>
    </form>
</body>
</html>
