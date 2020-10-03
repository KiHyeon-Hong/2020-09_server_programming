<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmVaild.aspx.cs" Inherits="MiddleTermStudy2.FrmVaild" %>

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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="이름을 입력해주세요" ControlToValidate="name" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <br />

            비밀번호 : <asp:TextBox ID="pwd" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pwd" SetFocusOnError="True" Display="Dynamic" ErrorMessage="비밀번호를 입력해주세요"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="비밀번호는 4~10자 입니다" ControlToValidate="pwd" SetFocusOnError="True" Display="Dynamic" ValidationExpression="\w{4,10}"></asp:RegularExpressionValidator>
            <br />

            비밀번호 확인 : <asp:TextBox ID="rpwd" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="rpwd" SetFocusOnError="True" Display="Dynamic" ErrorMessage="비밀번호 확인를 입력해주세요"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="비밀번호 확인은 4~10자 입니다" ControlToValidate="rpwd" SetFocusOnError="True" Display="Dynamic" ValidationExpression="\w{4,10}"></asp:RegularExpressionValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="비밀번호가 다릅니다" ControlToCompare="pwd" ControlToValidate="rpwd" SetFocusOnError="True" Display="Dynamic"></asp:CompareValidator>
            <br />

            이메일 : <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="이메일을 입력해주세요" ControlToValidate="email" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="이메일 형식을 확인해주세요" ControlToValidate="email" ValidationExpression="\S+@\S+\.\S+" Display="Dynamic"></asp:RegularExpressionValidator>
            <br />

            나이 : <asp:TextBox ID="age" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="나이를 입력해주세요" ControlToValidate="age" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="0~120 사이를 입력해주세요" ControlToValidate="age" Display="Dynamic" MaximumValue="120" MinimumValue="0" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
            <br />

            주민등록번호 : <asp:TextBox ID="regident" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="주민번호를 입력해주세요" ControlToValidate="regident" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="주민번호 형식이 맞지 않습니다" ControlToValidate="regident" SetFocusOnError="True" Display="Dynamic" ValidationExpression="\d{6}-[1-4]\d{6}"></asp:RegularExpressionValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="형식이 맞지 않습니다" ClientValidationFunction="valJumin" ControlToValidate="regident" SetFocusOnError="True" Display="Dynamic" OnServerValidate="valNum"></asp:CustomValidator>
            
            <hr />
            <asp:Button ID="btnExec" runat="server" Text="실행" OnClick="btnExec_click" />
            <asp:Button ID="btnCancel" runat="server" Text="Button" OnClick="btnCancel_click" />
            <hr />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            
        </div>
    </form>
</body>
</html>
