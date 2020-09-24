<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmCoffie.aspx.cs" Inherits="week3_2.FrmCoffie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            커피 종류 선택 :
            <asp:DropDownList ID="ddl" runat="server">

            </asp:DropDownList>
            <asp:Button ID="btnExec" runat="server" Text="조리법보기" OnClick="btnExec_click" />
        </div>
    </form>
</body>
</html>
