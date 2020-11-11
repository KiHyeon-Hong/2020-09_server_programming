<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmPass.aspx.cs" Inherits="BoardTemp.FrmPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 800px;">
            <tr>
                <td align="center" colspan="2">비밀번호 확인</td>

            </tr>
            <tr>
                <td colspan="2">
                    <hr width="600px" />
                </td>
            </tr>
            <tr>
                <td>
                    비밀번호 : 
                </td>
                <td>
                    <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
                    <asp:Button ID="btnConfirm" runat="server" Text="확인" OnClick="btnConfirm_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnList" runat="server" Text="리스트" OnClick="btnList_Click" />
                </td>
                <td>

                </td>
            </tr>
        </table>
    </form>
</body>
</html>
