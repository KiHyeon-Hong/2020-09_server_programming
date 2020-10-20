<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmPreviousResult.aspx.cs" Inherits="TermStudy.GetPost.FrmPreviousResult" %>
<!-- PreviousPageType 이용 -->
<!-- 전 페이지에서 넘어오는 값을 받겠다 -->
<%@ PreviousPageType VirtualPath="~/GetPost/FrmPrevious.aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>검색어를 포함하는 파일 검색!</h3>
            <hr />

            <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank">HyperLink</asp:HyperLink>
            <asp:Button ID="btnBack" runat="server" Text="이전 페이지로 이동" PostBackUrl="~/GetPost/FrmPrevious.aspx" />

        </div>
    </form>
</body>
</html>
