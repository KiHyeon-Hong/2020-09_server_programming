<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoffieRecipy.aspx.cs" Inherits="MiddleTermStudy.CoffieRecipy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="CoffeeForm" runat="server">
        <div>
            <select id="CoffeType" runat="server" />
            <input type="submit" id="ShowRecipe" value="조리법보기" OnServerClick="Show_serveClick" runat="server" />
        </div>
    </form>
</body>
</html>
