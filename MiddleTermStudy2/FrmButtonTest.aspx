<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmButtonTest.aspx.cs" Inherits="MiddleTermStudy2.FrmButtonTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <script type="text/javascript">
        function linkFunc() {
            return confirm("연결할까요?");
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnAsc" runat="server" Text="asc" CommandName="sort" CommandArgument="asc" OnCommand="sortClick" />
            <asp:Button ID="btnDesc" runat="server" Text="desc" CommandName="sort" CommandArgument="desc" OnCommand="sortClick"  /><br />

            <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="return linkFunc()" OnClick="LinkButton1_Click" >LinkButton</asp:LinkButton><br />

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="./FrmBMI.aspx">HyperLink</asp:HyperLink><br />

            <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="images" ImageUrl="./images/1.jpg" OnClick="ImageButton1_Click" /><br />

            <asp:Label ID="lblDisp" runat="server" Text="Label"></asp:Label><br />
        </div>
    </form>
</body>
</html>
