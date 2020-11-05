<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmNotice.aspx.cs" Inherits="week10_1.MasterPages.FrmNotice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1"></asp:Menu>
            <asp:SiteMapDataSource runat="server" ID="SiteMapDataSource1"></asp:SiteMapDataSource>
        </div>
    </form>
</body>
</html>
<!-- 왜 안되지? -->