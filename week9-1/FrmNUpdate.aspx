<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmNUpdate.aspx.cs" Inherits="week7.FrmNUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>매개변수 없이 특정 데이터 수정(update)</h3>
            <asp:Button ID="btnUpdate" runat="server" Text="업데이트 처리" OnClick="btnUpdate_Click" />
            <hr />

            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>

<!--
    버튼을 4개를 넣고, 각각의 버튼을 리스트 보기, 삽입, 수정, 삭제라고 할 수 있음
    각각의 버튼을 클릭할 때마다 기능을 한다?

    일일히 뜯어내지 않고, 한 페이지에서 할 수도 있을 것
-->