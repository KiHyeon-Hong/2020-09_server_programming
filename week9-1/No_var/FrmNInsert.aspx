<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmNInsert.aspx.cs" Inherits="week7.No_var.FrmNInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>매개변수 없이 데이터 입력</h3>
            <hr />

            <asp:Button ID="btnInsert" runat="server" Text="입력문 실행" OnClick="btnInsert_Click" />
            
        </div>
    </form>
</body>
</html>
