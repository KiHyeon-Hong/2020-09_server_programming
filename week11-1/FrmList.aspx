<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmList.aspx.cs" Inherits="BoardTemp.FrmList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td align="center">
                        <h2>게시판 리스트</h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="num" DataSourceID="SqlDataSource1" Height="16px" Width="1315px" CssClass="auto-style1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True">
                            <Columns>
                                <asp:BoundField DataField="num" HeaderText="num" ReadOnly="True" InsertVisible="False" SortExpression="num"></asp:BoundField>
                                
                                <asp:TemplateField HeaderText="글제목">
                                    <ItemTemplate>
                                        <a href="<%# "FrmView.aspx?No=" + Eval("num") %>">
                                            <%# Eval("title") %>
                                        </a>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                                <asp:BoundField DataField="writedate" HeaderText="writedate" SortExpression="writedate"></asp:BoundField>
                                <asp:BoundField DataField="readcnt" HeaderText="readcnt" SortExpression="readcnt"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connectionString %>' SelectCommand="SELECT [num], [title], [name], [writedate], [readcnt] FROM [tblBrd]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnWrite" runat="server" Text="글쓰기" OnClick="btnWrite_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
