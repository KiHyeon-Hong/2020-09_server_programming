<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmFormView.aspx.cs" Inherits="week7.NonConn.FrmFormView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333">
                <EditItemTemplate>
                    name:
                    <asp:TextBox Text='<%# Bind("name") %>' runat="server" ID="nameTextBox" /><br />
                    color:
                    <asp:TextBox Text='<%# Bind("color") %>' runat="server" ID="colorTextBox" /><br />
                    size:
                    <asp:TextBox Text='<%# Bind("size") %>' runat="server" ID="sizeTextBox" /><br />
                    <asp:LinkButton runat="server" Text="업데이트" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="취소" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></HeaderStyle>
                <InsertItemTemplate>
                    name:
                    <asp:TextBox Text='<%# Bind("name") %>' runat="server" ID="nameTextBox" /><br />
                    color:
                    <asp:TextBox Text='<%# Bind("color") %>' runat="server" ID="colorTextBox" /><br />
                    size:
                    <asp:TextBox Text='<%# Bind("size") %>' runat="server" ID="sizeTextBox" /><br />
                    <asp:LinkButton runat="server" Text="삽입" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="취소" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    name:
                    <asp:Label Text='<%# Bind("name") %>' runat="server" ID="nameLabel" /><br />
                    color:
                    <asp:Label Text='<%# Bind("color") %>' runat="server" ID="colorLabel" /><br />
                    size:
                    <asp:Label Text='<%# Bind("size") %>' runat="server" ID="sizeLabel" /><br />

                </ItemTemplate>
                <PagerStyle HorizontalAlign="Center" BackColor="#FFCC66" ForeColor="#333333"></PagerStyle>

                <RowStyle BackColor="#FFFBD6" ForeColor="#333333"></RowStyle>
            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connectionString %>' SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
