<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmDBConnect.aspx.cs" Inherits="week7.FrmDBConnect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblDisp" runat="server" Text="DB Connect?"></asp:Label>
        </div>
    </form>
</body>
</html>

<!--
    SQL Server 개체 탐색기 클릭
    MSSQLLOCALDB에서 데이터베이스 -> 데이터베이스 추가를 선택한다
    Wed_Asp_DB라고 이름을 하며, 확인을 선택한다

    테이블 만들기
    Wed_Asp_DB에서 테이블을 만들어 보겠다
    솔루션 탐색기에서 Docs 폴더를 만든다 -> Docs 폴더에 wed_asp_DB_SQL.txt를 만든다 (이름은 폴더 명도 파일 명도 상관 없음)

-->