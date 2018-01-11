<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="picture_upload.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <p>
            <asp:Button ID="UploadButton" runat="server" OnClick="UploadButton_Click" style="width: 60px" Text="Upload" />
        </p>
        <asp:Label ID="UploadStatusLabel" runat="server" Text="Label"></asp:Label>
        <p>
            <asp:Image ID="Image1" runat="server" />
        </p>
    </form>
</body>
</html>
