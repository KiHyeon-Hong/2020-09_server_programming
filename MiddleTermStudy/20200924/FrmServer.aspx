<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmServer.aspx.cs" Inherits="MiddleTermStudy.FrmServer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Redirect" OnClick="Button1_click" />
            <asp:Button ID="Button2" runat="server" Text="Transfer" OnClick="Button2_click" />
        </div>
    </form>
</body>
</html>
