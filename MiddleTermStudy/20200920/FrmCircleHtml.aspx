<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmCircleHtml.aspx.cs" Inherits="MiddleTermStudy.FrmCircleHtml" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="border-style: solid; border-width: thin; width: 100%; text-align: center;">
                <tr style="text-align: center; border-style: solid; border-width: thin">
                    <td colspan="3" style="text-align: center; border-style: solid; border-width: thin">원의 넓이 구하기</td>
                </tr>
                <tr style="text-align: center; border-style: solid; border-width: thin">
                    <td style="text-align: center; border-style: solid; border-width: thin">반지름</td>
                    <td style="text-align: center; border-style: solid; border-width: thin">
                        <asp:TextBox ID="lblText" runat="server"></asp:TextBox>cm
                    </td>
                    <td style="text-align: center; border-style: solid; border-width: thin">
                        <asp:Button ID="lblButton" runat="server" Text="Button" OnClick="lblButton_click" />
                    </td>
                </tr>
                <tr style="text-align: center; border-style: solid; border-width: thin">
                    <td colspan="3" style="text-align: center; border-style: solid; border-width: thin">
                        <asp:Label ID="lblLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
