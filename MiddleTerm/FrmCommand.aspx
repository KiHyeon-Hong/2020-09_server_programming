<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmCommand.aspx.cs" Inherits="TermStudy.FrmCommand" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <asp:TextBox ID="num1" runat="server"></asp:TextBox>
                <asp:TextBox ID="num2" runat="server"></asp:TextBox><hr /><br />
                <asp:Button ID="sum" runat="server" Text="+" CommandName="calc" CommandArgument="sum" OnCommand="calc_Command" />
                <asp:Button ID="sub" runat="server" Text="-" CommandName="calc" CommandArgument="sub" OnCommand="calc_Command" />
                <asp:Button ID="mul" runat="server" Text="*" CommandName="calc" CommandArgument="mul" OnCommand="calc_Command" />
                <asp:Button ID="div" runat="server" Text="/" CommandName="calc" CommandArgument="div" OnCommand="calc_Command" />
                <asp:Button ID="cancel" runat="server" Text="cancel" CommandName="cancel" CommandArgument="cancel" OnCommand="calc_Command" />
                <hr />
                <asp:Label ID="result" runat="server" Text="결과가 표시됩니다"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
