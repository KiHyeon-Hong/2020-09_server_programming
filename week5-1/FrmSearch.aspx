﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmSearch.aspx.cs" Inherits="week5.FrmSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            검색어 : <asp:TextBox ID="txtIn" runat="server"></asp:TextBox><br />
            파일형 : <asp:DropDownList ID="ddls" runat="server">
                <asp:ListItem Value="0" Selected="True">워드(*.doc)</asp:ListItem>
                <asp:ListItem Value="1">파워포인트(*.ppt)</asp:ListItem>
                <asp:ListItem Value="2">한글(*.hwp)</asp:ListItem>
                <asp:ListItem Value="3">어도비(*.pdf)</asp:ListItem>
            </asp:DropDownList><br />
            <asp:Button ID="btnExec" runat="server" Text="검색어보기" OnClick="btnExec_Click" />
        </div>
    </form>
</body>
</html>
