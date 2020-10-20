<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmFile.aspx.cs" Inherits="TermStudy.FrmFile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <select id="coffeeType" runat="server">
            </select>
            <input id="showRecipy" type="submit" runat="server" value="조리법 보기" onserverclick="showRecipy_ServerClick" />
        </div>
    </form>
</body>
</html>
