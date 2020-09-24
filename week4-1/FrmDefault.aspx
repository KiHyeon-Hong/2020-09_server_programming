<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmDefault.aspx.cs" Inherits="week4.FrmDefault" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <script type="text/javascript">
        function Lnk_func() {
            return confirm("연결할까요?");
        }

    </script>

</head>
<body>
    <form id="form1" runat="server">
            <!--
                onClick 만들 때 공통으로 만들어지는 부분이 있을 수도 있음
                사용하는 부분은 같은 이벤트? 똑같은 이벤트를 여러개의 컨트롤에서 사용하려면?
                공통의 컨트롤을 만드는 경우도 있음
                공통의 컨트롤을 만드는 경우에 대한 예제이다?
            -->
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
            <!--
                커멘드네임을 같게 해야지 공통으로 사용 가능?
                이벤트를 공통으로 사용하게끔
                이벤트를 하나를 만들고 공통으로 사용하게 가능합니다!!! commonEvent
            -->
            <!--
                속성 - 이벤트 - 작업 - command에 함수 이름을 적습니다    
            -->
            <asp:Button
                ID="btnAsc" runat="server" Text="오름차순" CommandName="Sort" CommandArgument="Ascending" OnCommand="Comm_Exec"
            />
            <asp:Button
                ID="btnDesc" runat="server" Text="내림차순" CommandName="Sort" CommandArgument="Descending" OnCommand="Comm_Exec"
            /><br />

            <asp:LinkButton
                ID="LinkButton1" runat="server" Text="연결하기" OnClientClick="return Lnk_func()" OnClick="LinkButton_click">
                    LinkButton
            </asp:LinkButton><br />

            
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="./FrmTest.aspx">HyperLink</asp:HyperLink><br />

            <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="그림들" ImageUrl="./images/CodeCraft.bmp" OnClick="ImageButton_Click" /><br /><hr />

            <asp:Label ID="lblDisp" runat="server" Text="Label"></asp:Label><br />
        </asp:Panel>
    </form>
</body>
</html>

