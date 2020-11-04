<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmFileUpload.aspx.cs" Inherits="week10.Files.FrmFileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p align="center"><b>파일 업로드 하기</b></p>
            <hr />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="btnUpload" runat="server" Text="파일 업로드 하기" OnClick="btnUpload_Click" />
        </div>
        <asp:Label ID="lblFiles" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
