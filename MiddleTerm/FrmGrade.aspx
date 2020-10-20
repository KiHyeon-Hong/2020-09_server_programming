<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmGrade.aspx.cs" Inherits="TermStudy.FrmGrade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%; text-align: center;">
                <tr>
                    <td colspan="5">학생 성적 관리 프로그램</td>
                </tr>
                <tr>
                    <td>
                        이름
                    </td>
                    <td>
                        <asp:TextBox ID="name" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        성적(숫자 입력)
                    </td>
                    <td>
                        <asp:TextBox ID="grade" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="store" runat="server" Text="결과 저장" OnClick="store_Click" />
                    </td>
                </tr>
            </table>
            <hr />

            <asp:DropDownList ID="studentList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="studentList_SelectedIndexChanged"  >

            </asp:DropDownList>

            <asp:Label ID="stdInfo" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
