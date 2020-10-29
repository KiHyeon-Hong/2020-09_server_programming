<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmListView.aspx.cs" Inherits="week7.NonConn.FrmListView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label Text='<%# Eval("name") %>' runat="server" ID="nameLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("color") %>' runat="server" ID="colorLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("size") %>' runat="server" ID="sizeLabel" /></td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Update" Text="업데이트" ID="UpdateButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="취소" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:TextBox Text='<%# Bind("name") %>' runat="server" ID="nameTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("color") %>' runat="server" ID="colorTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("size") %>' runat="server" ID="sizeTextBox" /></td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>데이터가 반환되지 않았습니다.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Insert" Text="삽입" ID="InsertButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="지우기" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:TextBox Text='<%# Bind("name") %>' runat="server" ID="nameTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("color") %>' runat="server" ID="colorTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("size") %>' runat="server" ID="sizeTextBox" /></td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label Text='<%# Eval("name") %>' runat="server" ID="nameLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("color") %>' runat="server" ID="colorLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("size") %>' runat="server" ID="sizeLabel" /></td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                                    <tr runat="server" style="">
                                        <th runat="server">name</th>
                                        <th runat="server">color</th>
                                        <th runat="server">size</th>
                                    </tr>
                                    <tr runat="server" id="itemPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="">
                                <asp:DataPager runat="server" ID="DataPager1">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label Text='<%# Eval("name") %>' runat="server" ID="nameLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("color") %>' runat="server" ID="colorLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("size") %>' runat="server" ID="sizeLabel" /></td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connectionString %>' SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
