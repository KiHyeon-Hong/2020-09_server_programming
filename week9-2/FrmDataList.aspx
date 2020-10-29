<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmDataList.aspx.cs" Inherits="week7.NonConn.FrmDataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" BackColor="White" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" DataSourceID="SqlDataSource1" OnCancelCommand="DataList1_CancelCommand" OnDeleteCommand="DataList1_DeleteCommand" OnEditCommand="DataList1_EditCommand" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnUpdateCommand="DataList1_UpdateCommand">
                <AlternatingItemStyle BackColor="White" />
                <EditItemTemplate>
                    상품명 :
                    <asp:TextBox ID="txtname" runat="server" Text='<%# Eval("name") %>' ></asp:TextBox>
                    <br />
                    상품색 :
                    <asp:TextBox ID="txtcolor" runat="server" Text='<%# Eval("color") %>' ></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="lbtnUpdate" runat="server" CommandName="Update" Text="[확인]" />
                    <asp:Button ID="lbtnCancel" runat="server" CommandName="Cancel" Text="[취소]" />
                </EditItemTemplate>
                <FooterStyle BackColor="#CCCC99" />
                <FooterTemplate>
                    Made By maid
                </FooterTemplate>
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <HeaderTemplate>
                    <b>상품목록</b>
                </HeaderTemplate>
                <ItemStyle BackColor="#F7F7DE" />
                <ItemTemplate>
                    상품명:&nbsp;
                    <asp:LinkButton ID="lbtnView" runat="server" Text='<%# Eval("name") %>' CommandName="Select" ></asp:LinkButton>
                    <br />
                    상품색:
                    <asp:Label Text='<%# Eval("color") %>' runat="server" ID="colorLabel" /><br />
                    크기:
                    <asp:Label Text='<%# Eval("size") %>' runat="server" ID="sizeLabel" /><br />
                    <br />
                </ItemTemplate>

                <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SelectedItemTemplate>
                    상품명 : <%# Eval("name") %>
                    <asp:LinkButton ID="lbtnEdit" runat="server" Text="[편집]" CommandName="Edit"></asp:LinkButton>
                    <br />
                    상품색상 : <%# Eval("color") %>
                </SelectedItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connectionString %>' SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
