<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmWrite.aspx.cs" Inherits="BoardTemp.FrmWrite" %>

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
                <td colspan="2" align="center">
                    게시글 작성
                </td>
            </tr>
            <tr>
                <td>
                    작성자 : 
                </td>
                <td>
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    비밀번호 : 
                </td>
                <td>
                    <asp:TextBox ID="pass" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    이메일 : 
                </td>
                <td>
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    글제목 : 
                </td>
                <td>
                    <asp:TextBox ID="title" runat="server" Width="500px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    글내용 : 
                </td>
                <td>
                    <asp:TextBox ID="contents" runat="server" TextMode="MultiLine" Height="322px" Width="500px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnWrite" runat="server" Text="저장" OnClick="btnWrite_Click" />
                    <asp:Button ID="btnList" runat="server" Text="글목록" OnClick="btnList_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
