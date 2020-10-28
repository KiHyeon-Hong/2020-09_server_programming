<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmNDelete.aspx.cs" Inherits="week7.No_var.FrmNDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>매개변수 없이 특정 데이터 삭제</h3>
            <asp:Button ID="btnDelete" runat="server" Text="데이터 삭제" OnClick="btnDelete_Click" />
            <hr />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
