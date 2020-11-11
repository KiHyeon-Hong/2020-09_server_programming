<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmView.aspx.cs" Inherits="BoardTemp.FrmView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 556px;
            height: 274px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td aling="center"><h2>게시판 글보기</h2></td>
            </tr>
            <tr>
                <td><hr /></td>
            </tr>
            <tr>
                <td>작성자 : <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 작성일 : <asp:Label ID="lblWriteDate" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 조회수 : <asp:Label ID="lblReadCount" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label>
            </tr>
            <tr >
                <td>
                    <asp:TextBox ID="txtContents" runat="server" TextMode="MultiLine" Height="130px" Width="519px"></asp:TextBox>   </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnModify" runat="server" Text="수정" OnClick="btnModify_Click" />
                    <asp:Button ID="btnDelete" runat="server" Text="삭제" OnClick="btnDelete_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnList" runat="server" Text="리스트" OnClick="btnList_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
