<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmModify.aspx.cs" Inherits="BoardTemp.FrmModify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 458px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>게시판 글 수정</td>
                    <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
                </tr>
                <tr>
                    <td>글제목 : </td>
                    <td>
                        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>글내용 : </td>
                    <td>
                        <asp:TextBox ID="txtContents" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnUpdate" runat="server" Text="Button" OnClick="btnUpdate_Click" />
                        <asp:Button ID="btnCancel" runat="server" Text="Button" OnClick="btnCancel_Click" />
                        </td>
                    </tr>
            </table>
        </div>
    </form>
</body>
</html>
