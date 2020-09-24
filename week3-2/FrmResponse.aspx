<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmResponse.aspx.cs" Inherits="week3_2.FrmResponse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnExec" runat="server" Text="실행" OnClick="btn_click" />
            <asp:Button ID="btnLink" runat="server" Text="연결" OnClick="btn_link" />
        </div>
    </form>
</body>
</html>
