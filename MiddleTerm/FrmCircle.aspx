<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmCircle.aspx.cs" Inherits="TermStudy.FrmCircle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="border-style: solid; width: 100%; text-align: center;">
                <tr>
                    <td colspan="3" style="border-style: dotted">원의 넓이 구하기</td>
                </tr>
                <tr>
                    <td style="border-style: dotted">반지름 입력</td>
                    <td style="border-style: dotted">
                        <asp:TextBox ID="radius" runat="server"></asp:TextBox>
                        <asp:DropDownList ID="unit" runat="server">

                        </asp:DropDownList>
                    </td>
                    <td style="border-style: dotted">
                        <asp:Button ID="calc" runat="server" Text="계산하기" OnClick="calc_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="border-style: dotted">
                        <asp:Label ID="result" runat="server" Text="결과 값이 표시 됩니다"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
