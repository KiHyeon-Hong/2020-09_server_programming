<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmView.aspx.cs" Inherits="week5.FrmView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            피치를 올려라<br />
            <asp:Button ID="btnUp" runat="server" Text="올리기" OnClick="btnUp_Click" />
            <asp:Label ID="lblDisp" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="btnDown" runat="server" Text="내리기" OnClick="btnDown_Click" />
        </div>
    </form>
</body>
</html>
