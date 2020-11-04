<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmFileView.aspx.cs" Inherits="week10.Files.FrmFileView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblRead" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="btnExec" runat="server" Text="실행" OnClick="btnExec_Click" />
            <hr />

            <h3>웹 서버 파일 브라우저</h3>
            경로 :
            <asp:Label ID="lblDisp" runat="server" Text="Label"></asp:Label><br />
            <asp:ListBox ID="ListBox1" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" ></asp:ListBox ><br />
            <asp:ListBox ID="ListBox2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox2_SelectedIndexChanged" ></asp:ListBox><br />
            상세 파일 정보<br />
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
