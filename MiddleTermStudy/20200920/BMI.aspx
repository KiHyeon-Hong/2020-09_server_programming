<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BMI.aspx.cs" Inherits="MiddleTermStudy.BMI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input id="height" type="text" runat="server" />
            <select id="measure" runat="server" />몸무게
            <input id="weight" type="text" runat="server" /><br>
            <input type="submit" value="'산출하기" OnServerClick="Calc_ServerClick" runat="server" />
        </div>
    </form>
    <p id="Result" runat="server"></p>
</body>
</html>
