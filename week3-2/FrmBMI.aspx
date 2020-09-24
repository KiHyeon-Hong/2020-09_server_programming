<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmBMI.aspx.cs" Inherits="week3_2.FrmBMI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;" align="center">
            <tr style="border-style: solid; border-width: thin">
                <td>신장</td>
                <td>
                    <asp:TextBox ID="txtkeys" runat="server"></asp:TextBox>
                    <!-- DropDownList -->
                    <!-- 항목을 넣으면 된다 -->
                    <!-- 페이지가 로드 되면서 실행되는 부분에 넣는 코드를 추가한다 -->
                    <!-- 리스트 컬렉션 편집기 new ListItem()과 같음-->
                    <!-- '>' 를 누르고 항목편집을 누른다 -->
                    <asp:DropDownList ID="ddl" runat="server">
                        <asp:ListItem Value="1">미터</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>몸무게</td>
                <td>
                    <asp:TextBox ID="txtweight" runat="server"></asp:TextBox>cm
                </td>
            </tr>
            <tr style="border-style: solid; border-width: thin">
                <td colspan="4" style="text-align: center">
                    <asp:Button ID="btnCal" runat="server" Text="산출하기" OnClick="btn_click" />
                </td>
            </tr>
            <tr style="border-style: solid; border-width: thin">
                <td colspan="4" style="text-align: center">
                    <asp:Label ID="Result" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
