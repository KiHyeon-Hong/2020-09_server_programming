<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmCommandClick.aspx.cs" Inherits="MiddleTermStudy.FrmCommandClick" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function confirmReturn() {
            return confirm("연결할까요?");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <!--
            onClick의 공통된 작업을 해야 할 수도 있음
            공통의 컨트롤을 만들자

            commandName을 같게 해야지 공통으로 사용이 가능?
            이벤트를 하나를 만들고 공통으로 사용하게 가능합니다

            속성 - 이벤트 - 작업 - command에 함수 이름을 적습니다
        -->
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
            <asp:Button ID="Button1" runat="server" Text="0" CommandName="one" CommandArgument="min" OnCommand="btnClick" />
            <asp:Button ID="Button2" runat="server" Text="9" CommandName="one" CommandArgument="max" OnCommand="btnClick" />
            <asp:Button ID="Button3" runat="server" Text="10" CommandName="two" CommandArgument="min" OnCommand="btnClick" />
            <asp:Button ID="Button4" runat="server" Text="99" CommandName="two" CommandArgument="max" OnCommand="btnClick" />
            <hr />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" Text="연결하기" OnClientClick="return confirmReturn()" OnClick="linkClick">LinkButton</asp:LinkButton>
            <hr />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="./FrmBMI.aspx">HyperLink</asp:HyperLink>
            <hr /><br />
            <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="그림" ImageUrl="~/Images/button.png" OnClick="imgClick" />
            <hr /><br />
            <asp:Label ID="lblDisp" runat="server" Text=""></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
