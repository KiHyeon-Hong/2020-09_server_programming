<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmContainer.aspx.cs" Inherits="MiddleTermStudy.FrmContainer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BackColor="#CCFFCC">
            컨테이너형 웹 컨트롤 예제<br />
            쇼핑백의 변신:
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                <asp:ListItem Value="0">01</asp:ListItem>
                <asp:ListItem Value="1">02</asp:ListItem>
            </asp:RadioButtonList>
        </asp:Panel>
        <br />

        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="1">
            <asp:View ID="View1" runat="server">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/bag_01.bmp" ImageAlign="Middle" Height="250px" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/bag_02.bmp" ImageAlign="Middle" Height="250px" Width="262px" />
            </asp:View>
        </asp:MultiView>
    </form>
</body>
</html>
