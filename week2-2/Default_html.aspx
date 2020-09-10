<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default_html.aspx.cs" Inherits="week2_2.Default_html" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;" border="1px">
            <tr>
                <td colspan="2" style="text-align: center">

                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    가로
                </td>
                <td style="text-align: center">
                    <asp:TextBox ID="txtWidth" runat="server"></asp:TextBox>cm
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    세로
                </td>
                <td style="text-align: center">
                    <asp:TextBox ID="txtLength" runat="server"></asp:TextBox>cm
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="lblButton" runat="server" Text="넓이 구하기" OnClick="btnArea_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Label ID="lblOutput" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
