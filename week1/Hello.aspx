<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hello.aspx.cs" Inherits="Hello1.Hello" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>안녕하세요</title>
    <!-- 원래는 이 script 부분이 .aspx.cs에 들어가야함 -->
    <script language="C#" runat="server">
        void Page_Load(object sender, EventArgs e) {
            lblDisp.Text = "현재시각: " + DateTime.Now.ToString();
        }
    </script>
</head>
<body>
    <center>
        <h3>반갑습니다</h3>
        <form id="form1" runat="server">
            <div>
                <hr />
                <!-- 이쁘게 디자인 가능함, HTML 코드를 이용해서 -->
                <asp:Label ID="lblDisp" runat="server"></asp:Label>
                <hr />
            </div>
        </form>
    </center>
</body>
</html>

<!-- 주석입니다 -->

<!-- 
    도구 상자를 이용하자    
    데이터
    유효성 검사 - 1 ~ 100 사이 값 넣기
    탐색 - 메뉴에 관련된 부분
    로그인 - 로그인 페이지를 놓고 회원 가입 등
    Webparts - 데이터를 웹 형식으로 보여주게 함
    AJAX - 프로세스 여러개가 동시에 수행이 되도록 함, 병행 형태
    Dynamic Data
    HTML - 일반적으로 사용되는 HTML 부분, CGI 형태? -> 코드에서 돈다
    보통 표준에 있는 버튼을 활용하기도 함 -> runat이 server니까 서버쪽에서 돈다
-->

<!--
    이것을 ASP.NET 형태로 만들어야 한다
-->