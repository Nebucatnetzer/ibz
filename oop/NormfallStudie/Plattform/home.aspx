<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Plattform.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Button ID="ButtonGetFlights" runat="server" OnClick="ButtonGetFlights_Click" style="height: 26px" Text="Get Flights" />
        <br />
        <br />
        RoomType<br />
        <asp:DropDownList ID="DropDownRoomType" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        Hotel<br />
        <asp:TextBox ID="TextBoxHotel" runat="server"></asp:TextBox>
        <br />
        <br />
        Availability<br />
        From<asp:Calendar ID="CalendarFrom" runat="server"></asp:Calendar>
        <br />
        To<asp:Calendar ID="CalendarTo" runat="server"></asp:Calendar>
        <br />
        <asp:Button ID="ButtonAddRoom" runat="server" OnClick="ButtonAddRoom_Click" Text="Add Room" />
        <br />
    </form>
</body>
</html>
