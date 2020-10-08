<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmPitch.aspx.cs" Inherits="week6.FrmPitch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>계명을 조절하자</h3>
            <hr />

            <asp:Button ID="btnDown" runat="server" Text="내리기" OnClick="btnDown_Click" />
            &nbsp;
            <asp:Label ID="lblDisp" runat="server" Text="도"></asp:Label>
            &nbsp;
            <asp:Button ID="btnUp" runat="server" Text="올리기" OnClick="btnUp_Click" />

        </div>
    </form>
</body>
</html>
