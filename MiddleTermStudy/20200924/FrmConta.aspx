<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmConta.aspx.cs" Inherits="MiddleTermStudy.FrmConta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BackColor="#CCFFFF" HorizontalAlign="Center">
            <asp:Label ID="Label1" runat="server" Text="목록형 컨트롤 사용예제"></asp:Label>
            <br />
        </asp:Panel>

        RepeatDirection:
        <asp:RadioButtonList ID="rblDirec" runat="server" AutoPostBack="true" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblDirec_SelectedIndexChanged">
            <asp:ListItem Value="0">Horizantal</asp:ListItem>
            <asp:ListItem Value="1">Vertical</asp:ListItem>
        </asp:RadioButtonList>
        <br />

        RepeatLayout:
        <asp:RadioButtonList ID="rblLay" runat="server" AutoPostBack="true" RepeatDirection="Horizontal" OnSelectedIndexChanged="RrblLay_SelectedIndexChanged" >
            <asp:ListItem Value="0">Table</asp:ListItem>
            <asp:ListItem Value="1">Flow</asp:ListItem>
        </asp:RadioButtonList>
        <br />

        나의 관심분야 선택
        <asp:CheckBoxList ID="chkList" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" RepeatColumns="3" OnSelectedIndexChanged="chkList_SelectedIndexChanged">
            <asp:ListItem Value="0">문학</asp:ListItem>
            <asp:ListItem Value="1">경제/경영</asp:ListItem>
            <asp:ListItem Value="2">외국어</asp:ListItem>
            <asp:ListItem Value="3">예술</asp:ListItem>
            <asp:ListItem Value="4">자연과학</asp:ListItem>
            <asp:ListItem Value="5">취미/실용</asp:ListItem>
            <asp:ListItem Value="6">인문</asp:ListItem>
            <asp:ListItem Value="7">컴퓨터</asp:ListItem>
            <asp:ListItem Value="8">스포츠</asp:ListItem>
            <asp:ListItem Value="9">정치/사회</asp:ListItem>
        </asp:CheckBoxList>
        <br />

        BulletStyle:
        <asp:DropDownList ID="ddl" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_SelectedIndexChanged">
            <asp:ListItem Value="0">NoSet</asp:ListItem>
            <asp:ListItem Value="1">Numbered</asp:ListItem>
            <asp:ListItem Value="2">LowerAlpha</asp:ListItem>
            <asp:ListItem Value="3">UpperAlpha</asp:ListItem>
            <asp:ListItem Value="4">LowerRoman</asp:ListItem>
            <asp:ListItem Value="5">UpperRoman</asp:ListItem>
            <asp:ListItem Value="6">Disc</asp:ListItem>
            <asp:ListItem Value="7">Circle</asp:ListItem>
            <asp:ListItem Value="8">Square</asp:ListItem>
        </asp:DropDownList>
        <br /><hr />

        선택한 관심분야 목록:
        <asp:BulletedList ID="BulletedList1" runat="server">

        </asp:BulletedList>
    </form>
</body>
</html>
