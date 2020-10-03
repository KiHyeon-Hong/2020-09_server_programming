<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMultiView.aspx.cs" Inherits="MiddleTermStudy2.FrmMultiView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                컨테이너 형 웹 컨트롤 예제<br />
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="selectedIndexChange">
                    <asp:ListItem Value="0">01</asp:ListItem>
                    <asp:ListItem Value="1">02</asp:ListItem>
                </asp:RadioButtonList>
            </asp:Panel>

            <br />

            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <asp:Image ID="Image1" runat="server" ImageUrl="./images/1.jpg" ImageAlign="Middle" />
                </asp:View>
                <asp:View ID="View2" runat="server" >
                    <asp:Image ID="Image2" runat="server" ImageUrl="./images/2.jpg" ImageAlign="Middle" />
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
