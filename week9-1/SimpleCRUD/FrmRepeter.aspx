<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmRepeter.aspx.cs" Inherits="week7.SimpleCRUD.FrmRepeter" %>

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
                내부 템플릿 구성이 되어 있음
                자동으로 안만들어주므로 전부 지정해줘야 한다
                그냥 돌리면 아무것도 나오지 않는다 -> 나오도록 만들지 않았기 때문에

            -->
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <HeaderTemplate><h3>상품 목록</h3></HeaderTemplate>
                <ItemTemplate>
                    상품명 : <%# Eval("name") %><br />
                    상품 컬러 : <%# Eval("color") %><br />
                    상품 크기 :<%# Eval("size") %><br />
                </ItemTemplate>
                <SeparatorTemplate><hr /></SeparatorTemplate>
                <FooterTemplate>made by TearMoon</FooterTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
