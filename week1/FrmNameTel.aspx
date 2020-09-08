<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmNameTel.aspx.cs" Inherits="Hello1.FrmNameTel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>이름과 전화번호 출력</title>
</head>
<body>
    <form id="form1" runat="server" style="text-align: center">
        <hr />
        <div>
            <asp:TextBox ID="name" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="tel" runat="server"></asp:TextBox><br />
        </div>
        <hr />
        <asp:Button ID="btnDisp" runat="server" Text="출력" onClick="btnDisp_click" />
        <hr />
        <asp:Label ID="lblName" runat="server"></asp:Label><br />
        <asp:Label ID="lblTel" runat="server"></asp:Label><br />
    </form>
</body>
</html>
