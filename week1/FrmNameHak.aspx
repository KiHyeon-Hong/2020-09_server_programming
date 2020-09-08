<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmNameHak.aspx.cs" Inherits="Hello1.FrmNameHak" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>이름과 학과 출력</title>
</head>
<body>
    <h3 style="text-align: center">나의 이름과 학번은?</h3>
    <form id="form1" runat="server" style="text-align: center">
        <div>
            <hr />
            이름 : <asp:Label ID="name" runat="server"></asp:Label><br />
            학번 : <asp:Label ID="hak" runat="server"></asp:Label><br /><br />

            <asp:TextBox ID="ins" runat="server"></asp:TextBox>
            <hr />
        </div>
    </form>
</body>
</html>

<!-- ctrl + Alt + 0으로 바로 넘어갈 수 있음 -->