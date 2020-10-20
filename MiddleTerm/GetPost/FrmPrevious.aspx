<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmPrevious.aspx.cs" Inherits="TermStudy.GetPost.FrmPrevious" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>검색어를 포함하는 파일 검색</h3>
            <hr />
            검색어 : <asp:TextBox ID="txtIn" runat="server"></asp:TextBox><br />
            파일형 :
            <asp:DropDownList ID="ddl" runat="server">
                <asp:ListItem Value="0">워드(.doc)</asp:ListItem>
                <asp:ListItem Value="1">파워포인트(.ppt)</asp:ListItem>
                <asp:ListItem Value="2">한글(.hwp)</asp:ListItem>
                <asp:ListItem Value="3">어도비(.pdf)</asp:ListItem>
            </asp:DropDownList><br />
            <!--
                OnClick="btnExec_Click"
            -->
            <asp:Button ID="btnExec" runat="server" Text="검색어보기" PostBackUrl="~/GetPost/FrmPreviousResult.aspx" />
        </div>
    </form>
</body>
</html>
