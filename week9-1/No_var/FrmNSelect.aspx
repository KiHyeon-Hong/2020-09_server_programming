<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmNSelect.aspx.cs" Inherits="week7.No_var.FrmNSelect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>매개변수 없이 데이터 보기(GridView 이용)</h3>
            <hr />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                    <asp:BoundField DataField="tel_phone" HeaderText="tel_phone" SortExpression="tel_phone"></asp:BoundField>
                </Columns>

                <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

                <RowStyle BackColor="#EFF3FB"></RowStyle>

                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connectionString %>' SelectCommand="SELECT * FROM [Test]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
