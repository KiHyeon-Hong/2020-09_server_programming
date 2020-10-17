<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmProduct.aspx.cs" Inherits="week6.SessionUse.FrmProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td>장바구니 보기</td>
                    <td>
                        <asp:Button ID="btnExec" runat="server" Text="상세보기" OnClick="btnExec_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ListBox ID="ListBox1" runat="server">

                        </asp:ListBox><hr />
                    </td>
                    <td>
                        <asp:Label ID="lblDisp" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
