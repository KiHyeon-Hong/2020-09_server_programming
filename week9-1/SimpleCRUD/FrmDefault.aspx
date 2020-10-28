<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmDefault.aspx.cs" Inherits="week7.SimpleCRUD.FrmDefault" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            제품명 : <asp:TextBox ID="name" runat="server"></asp:TextBox><br />
            제품 컬러 : <asp:TextBox ID="color" runat="server"></asp:TextBox><br />
            제품 크기 : <asp:TextBox ID="size" runat="server"></asp:TextBox><br /><hr />
            <asp:Button ID="btnInsert" runat="server" Text="insert" OnClick="btnInsert_Click" />
            <asp:Button ID="btnModify" runat="server" Text="modify" OnClick="btnModify_Click" />
            <asp:Button ID="btnDelete" runat="server" Text="delete" OnClick="btnDelete_Click" />
            <asp:Button ID="btnList" runat="server" Text="list" OnClick="btnList_Click" /><br /><hr />

            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
