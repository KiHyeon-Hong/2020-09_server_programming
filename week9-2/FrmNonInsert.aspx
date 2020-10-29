<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmNonInsert.aspx.cs" Inherits="week7.NonConn.FrmNonInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            상품명 : <asp:TextBox ID="name" runat="server"></asp:TextBox>
            상품 색상 : <asp:TextBox ID="color" runat="server"></asp:TextBox>
            상품 크기 : <asp:TextBox ID="size" runat="server"></asp:TextBox><br /><hr />
            <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" /><br /><hr />

        </div>
    </form>
</body>
</html>
