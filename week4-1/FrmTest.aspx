<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmTest.aspx.cs" Inherits="week4.FrmTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

            <!--
                사칙연산을 하나의 이벤트로 해봅시다.
            -->

        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="btnPlus" runat="server" Text="+" CommandName="Cals_click" CommandArgument="plus" OnCommand="Commons_clcik" />
            <asp:Button ID="btnMul" runat="server" Text="*" CommandName="Cals_click" CommandArgument="mul" OnCommand="Commons_clcik" />
            <hr />
            <asp:Label ID="lblDisp" runat="server" Text=""></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
