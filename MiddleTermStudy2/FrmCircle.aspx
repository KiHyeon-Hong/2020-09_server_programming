<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmCircle.aspx.cs" Inherits="MiddleTermStudy2.FrmCircle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" BorderStyle="Dotted">
                <asp:TableRow HorizontalAlign="Center">
                    <asp:TableCell ColumnSpan="3">
                        원의 넓이 구하기
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        반지름
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="circleText" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="circleButton" runat="server" Text="Button" OnClick="circleButton_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow HorizontalAlign="Center">
                    <asp:TableCell ColumnSpan="3">
                        <asp:Label ID="result" runat="server" Text="Label"></asp:Label>
                    </asp:TableCell>

                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
