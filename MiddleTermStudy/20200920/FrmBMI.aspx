<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmBMI.aspx.cs" Inherits="MiddleTermStudy.FrmBMI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            몸무게 : <input type="text" name="myKg" id="myText" runat="server" /><br />
            <input type="submit" value="'산출하기" OnServerClick="Calc_ServerClick" runat="server" />
        </div>
        <p id="Result" runat="server"></p>
    </form>
</body>
</html>
