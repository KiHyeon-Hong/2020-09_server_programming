<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmDataList.aspx.cs" Inherits="week7.SimpleCRUD.FrmDataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" DataSourceID="SqlDataSource1">
                <AlternatingItemStyle BackColor="White"></AlternatingItemStyle>

                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

                <FooterTemplate>
                    Made By TearMoon
                </FooterTemplate>

                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <HeaderTemplate>
                    상품 목록입니다
                </HeaderTemplate>

                <ItemStyle BackColor="#EFF3FB"></ItemStyle>

                <ItemTemplate>
                    name:
                    <asp:Label Text='<%# Eval("name") %>' runat="server" ID="nameLabel" /><br />
                    color:
                    <asp:Label Text='<%# Eval("color") %>' runat="server" ID="colorLabel" /><br />
                    size:
                    <asp:Label Text='<%# Eval("size") %>' runat="server" ID="sizeLabel" /><br />
                    <br />
                </ItemTemplate>

                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedItemStyle>
            </asp:DataList>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connectionString %>' SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
