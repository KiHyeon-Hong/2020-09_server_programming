<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmDefault.aspx.cs" Inherits="week2.FrmDefault" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--
                다른 테이블을 활용해 본다
                서버 딴에서 돌아가게 해본다
            -->
            <asp:Table ID="Table1" runat="server" BorderStyle="Solid">
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center" Height="40">
                        원의 넓이 구하기
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        반지름
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtin" runat="server">cm</asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btnCal" runat="server" Text="Button" OnClick="btnCal_Click"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center" ColumnSpan="3">
                        <asp:Label ID="lblDisp" runat="server" Text="Label"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>

<!-- 나중에 컴포넌트 등을 이용하여 만들면 좋을 것 -->
<!-- 테이블 형태를 잘 잡자! -->
<!-- class를 만들고, 상속 등을 이용하여 만든다 -->

<!--
    표준으로 만들면 소석에 대한 부분이 달리 만들어지고,
    HTML 태그를 이용하여 style을 통하여 스타일을 바꿀 수 있음
-->

<!--
    Defalut.html 형태로 만들면 싱글 페이지로 만들 수 있지만 분리하는 것이 훨씬 좋음
    <script>를 넣어도 구현은 가능하지만 보기 힘듬, 헷갈림
    분리 되어진것이 훨씬 좋음
    상속을 받아서... 프로그램에서 활용함
    상속을 받으면 부모로 부터 받음, 자식이 그것을 활용할 수 있음, 거꾸로 자식의 메소드들은 부모가 볼 수 없습니다
-->

<!--
    비하인드로 처리하기 위해 이벤트를 만듬
    속성의 번개 표시를 누르면 이벤트이다!!!
    메소드들을 만들 수 있음

    이벤트를 처리를 하는데, 접근 한정자의 부분이 있음
    protected.... 본인과 자식만 볼 수 있음
    public - 전부 볼 수 있음
    private - 자기만 봄
-->

