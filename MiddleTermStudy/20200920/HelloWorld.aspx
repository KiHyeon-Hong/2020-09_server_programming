<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HelloWorld.aspx.cs" Inherits="MiddleTermStudy.HelloWorld" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>안녕하세요</title>
    <!-- script 부분이 .aspx.cs에 들어가야 함 -->
    <script language="c#" runat="server">
        void Page_Load(object sender, EventArgs e) {
            lblDisp.Text = "현재시각 : " + DateTime.Now.ToString();
        }
    </script>
</head>
<body>
    <center>
        <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblDisp" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
    </center>
</body>
</html>
