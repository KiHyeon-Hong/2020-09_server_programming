<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmCommand.aspx.cs" Inherits="MiddleTermStudy2.FrmCommand" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Button ID="btnPlus" runat="server" Text="+" CommandName="calsClick" CommandArgument="plus" OnCommand="btn_Click" />
                <asp:Button ID="btnMul" runat="server" Text="*" CommandName="calsClick" CommandArgument="mul" OnCommand="btn_Click" />
                <hr />
                <asp:Label ID="lblDisp" runat="server" Text=""></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
