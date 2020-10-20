<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmVaild.aspx.cs" Inherits="TermStudy.FrmVaild" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <script type="text/javascript">
        function valjumin(source, args) {
            var sn = args.Value;
            var chkDigit = 0;
            var weight = 2;

            for (var i = 0; i < 13; i++) {
                if (i == 6) {
                    continue;
                }

                chkDigit += parseInt(sn.charAt(i)) * weight;
                weight++;

                if (weight > 9)
                    weight = 2;
            }

            chkDigit = (11 - (chkDigit % 11)) % 10;

            if (parseInt(sn.charAt(13)) == chkDigit) {
                args.IsValid = true;
            }
            else {
                args.IsValid = false;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            이름 : <asp:TextBox ID="name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="이름 입력" Display="Dynamic" SetFocusOnError="True" ControlToValidate="name"></asp:RequiredFieldValidator>
            <br />

            비밀번호 : <asp:TextBox ID="pwd" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="비번 입력" Display="Dynamic" SetFocusOnError="True" ControlToValidate="pwd"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="4~10자" ControlToValidate="pwd" SetFocusOnError="True" Display="Dynamic" ValidationExpression="\w{4,10}"></asp:RegularExpressionValidator>
            <br />

            비밀번호 확인 : <asp:TextBox ID="rPwd" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="비번 확인 입력" Display="Dynamic" SetFocusOnError="True" ControlToValidate="rPwd"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="비번 일치 않음" ControlToCompare="pwd" ControlToValidate="rPwd" SetFocusOnError="True" Display="Dynamic"></asp:CompareValidator>
            <br />

            이메일 : <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="이메일 입력" Display="Dynamic" SetFocusOnError="True" ControlToValidate="email"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="형식 확인" ControlToValidate="email" SetFocusOnError="True" Display="Dynamic" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
            <br />

            나이 : <asp:TextBox ID="age" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="나이 입력" Display="Dynamic" SetFocusOnError="True" ControlToValidate="age"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="0~100세" ControlToValidate="age" SetFocusOnError="True" Display="Dynamic" Type="Integer" MaximumValue="100" MinimumValue="0"></asp:RangeValidator>
            <br />

            주민등록번호 : <asp:TextBox ID="regident" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="주민 번호 입력" Display="Dynamic" SetFocusOnError="True" ControlToValidate="regident"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="형식 확인" ControlToValidate="regident" SetFocusOnError="True" Display="Dynamic" ValidationExpression="\d{6}-[1-4]\d{6}"></asp:RegularExpressionValidator>
            <!--
                OnServerValidate="valNum"
            -->
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="없는 주민 번호" ClientValidationFunction="valjumin" ControlToValidate="regident" SetFocusOnError="True" Display="Dynamic"></asp:CustomValidator>

            <hr />
            <asp:Button ID="result" runat="server" Text="Button" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

            <!--
                
            -->
        </div>
    </form>
</body>
</html>
