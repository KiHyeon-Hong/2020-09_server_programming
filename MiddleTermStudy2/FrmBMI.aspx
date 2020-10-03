<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmBMI.aspx.cs" Inherits="MiddleTermStudy2.FrmBMI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" BorderStyle="Solid">
                <asp:TableRow>
                    <asp:TableCell>
                        신장
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="height" runat="server"></asp:TextBox>
                        <asp:DropDownList ID="ddl" runat="server">

                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        몸무게
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="weight" runat="server"></asp:TextBox>cm
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="4" HorizontalAlign="Center">
                        <asp:Button ID="myResult" runat="server" Text="Button" OnClick="myResult_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="4" HorizontalAlign="Center">
                        <asp:Label ID="result" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
