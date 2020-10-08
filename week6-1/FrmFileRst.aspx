<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmFileRst.aspx.cs" Inherits="week6.FrmFileRst" %>

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

            <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank">HyperLink</asp:HyperLink>
            <asp:Button ID="btnBack" runat="server" Text="이전 페이지로 이동" PostBackUrl="~/FrmFileSearch.aspx" />

        </div>
    </form>
</body>
</html>
