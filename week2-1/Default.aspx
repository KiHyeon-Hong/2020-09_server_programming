<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="week2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="border-style: solid; border-width: thin; width:100%;">
                <tr align="center" style="border-style: solid; border-width: thin; height: 40px">
                    <td colspan="3" style="border-style: solid; border-width: thin;">원의 넓이 구하기</td>
                </tr>
                <tr style="border-style: solid; border-width: thin; height: 40px" align="center " >
                    <td style="border-style: solid; border-width: thin;" align="center">반지름</td>
                    <td style="border-style: solid; border-width: thin;" align="center"><asp:TextBox ID="txtin" runat="server"></asp:TextBox>cm</td>
                    <td style="border-style: solid; border-width: thin;"  align="center"><asp:Button ID="btnCal" runat="server" Text="넓이 구하기" OnClick="btnCal_Click"/></td>
                </tr>
                <tr align="center" style="border-style: solid; border-width: thin; height: 40px">
                    <td colspan="3" style="border-style: solid; border-width: thin;">
                        <asp:Label ID="lblDisp" runat="server" Text="Label"></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

<!--
    HTML의 테이블과 HTML 구조가 아닌 class 형태를 가진 테이블이 있음
    밖으로 표현되는 부분은 같은데, 사용되는 코드가 다름

-->
