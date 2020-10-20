<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmList.aspx.cs" Inherits="TermStudy.FrmList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC">
                    RepeatDirection :
                    <asp:RadioButtonList ID="repeatDirection" runat="server" AutoPostBack="true" RepeatDirection="Horizontal" OnSelectedIndexChanged="repeatDirection_SelectedIndexChanged" >

                    </asp:RadioButtonList>
                    <hr /><br />

                    RepeatLayout :
                    <asp:RadioButtonList ID="repeatLayout" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="repeatLayout_SelectedIndexChanged" >

                    </asp:RadioButtonList>
                    <hr /><br />

                    나의 관심분야 선택
                    <asp:CheckBoxList ID="chkList" runat="server" AutoPostBack="True" RepeatColumns="3" RepeatDirection="Horizontal" OnSelectedIndexChanged="chkList_SelectedIndexChanged" >
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
                    <hr /><br />

                    BulletStyle :
                    <asp:DropDownList ID="styleList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="styleList_SelectedIndexChanged" >
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
                    <hr /><br />

                    선택한 관심분야 목록 :
                    <asp:BulletedList ID="loveList" runat="server">

                    </asp:BulletedList>
                </asp:Panel>
        </div>
    </form>
</body>
</html>
