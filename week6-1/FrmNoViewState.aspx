<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmNoViewState.aspx.cs" Inherits="week6.FrmNoViewState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblDisp" runat="server" Text="Label"></asp:Label>
            <hr />
            <asp:Button ID="btnExec" runat="server" Text="실행" OnClick="btnExec_Click" />
        </div>
    </form>
</body>
</html>
