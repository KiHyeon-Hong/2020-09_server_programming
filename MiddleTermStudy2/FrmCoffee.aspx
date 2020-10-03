<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmCoffee.aspx.cs" Inherits="MiddleTermStudy2.FrmCoffee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="coffeeForm" runat="server">
        <div>
            <select id="coffeeType" runat="server">
            </select>
            <input id="showRecipy" type="submit" value="조리법 보기" runat="server" OnServerClick="showRecipy_ServerClick" />
        </div>
    </form>
</body>
</html>
