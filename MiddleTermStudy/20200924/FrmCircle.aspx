<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmCircle.aspx.cs" Inherits="MiddleTermStudy.FrmCircle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="3" HorizontalAlign="Center" Height="40">
                        원의 넓이 구하기
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        반지름
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="lblText" runat="server"></asp:TextBox>cm
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="lblButton" runat="server" Text="Button" OnClick="lblButton_click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="3" HorizontalAlign="Center" Height="40">
                        <asp:Label ID="lblLabel" runat="server" Text="Label"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
