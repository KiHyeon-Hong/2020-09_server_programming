<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmSelect.aspx.cs" Inherits="week7.FrmSelect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--
                자동서식
            -->
            <!--
                데이터 소스 선택 -> 새로운 소스에서 (localdb)\MSSQLLocalDB 입력하면 있는 DB 나옴!
                거기서부터 진행하면 된다
                데이터소스 선택 -> 데이터 베이스 -> 새연결 -> SQL Server
            -->
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                    <asp:BoundField DataField="tel_phone" HeaderText="tel_phone" SortExpression="tel_phone"></asp:BoundField>
                </Columns>

                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#FFCC66" ForeColor="#333333"></PagerStyle>

                <RowStyle BackColor="#FFFBD6" ForeColor="#333333"></RowStyle>

                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#FDF5AC"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#4D0000"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#FCF6C0"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#820000"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource2"></asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Wed_Asp_DBConnectionString %>' SelectCommand="SELECT * FROM [Test]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

<!--
    연결형에는 매개변수 있냐 없냐로 나뉠 수 있음
    select 하고, 매개변수 없는 형으로 조작을 해볼 것

    도구 상자의 데이터
-->