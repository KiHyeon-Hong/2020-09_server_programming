<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMuls.aspx.cs" Inherits="MiddleTermStudy.FrmMuls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            입력 : <asp:TextBox ID="num" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnDisp" runat="server" Text="제곱 값 출력" onClick="btnDisp_click" /><br />
            출력 : <asp:Label ID="lblNum" runat="server"></asp:Label><br />
        </div>
    </form>
</body>
</html>
