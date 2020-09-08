<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hello2.aspx.cs" Inherits="Hello1.Hello2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>안녕하세요 2</title>
</head>
<body>
    <!-- style을 가서 text-align 부분을 center로 하면 가운데로 온다 -->
    <form id="form1" runat="server" style="text-align: center">
        <div>
            <center>
                <h3>현재 시간 입니다</h3>
                <hr width="300" />
                <!-- 이쁘게 디자인 가능함, HTML 코드를 이용해서 -->
                <!-- 페이지가 로드가 되어질 때 나와야 함-->
                <!-- 속성창을 열어서 디자인을 바꿀 수 있음 -->
                <asp:Label ID="lblDisplay" runat="server" ForeColor="Red"></asp:Label>
                <hr width="300" />
            </center>
        </div>
    </form>
</body>
</html>

<!--
    외형에 대한 부분은 .aspx에서,
    로직에 대한 부분은 .aspx.cs에서 합니다
-->

<!--
    홈 디렉터리 사용의 문제점 - 보안의 문제, 공간 부족의 문제
    가상 디렉터리 설정 - IIS 관리자에서 지정함
    새로운 변경 사항이 있으면 서버 관리에서 다시 시작을 누르면 됨
-->

<!--
    ASP.NET 실습
    1. 이름과 학과를 출력하는 프로그램 작성
    2. 이름과 전화번호를 입력하여 출력하는 프로그램 작성
    3. 값을 입력받아서 제곱 승을 출력하는 프로그램 작성
-->