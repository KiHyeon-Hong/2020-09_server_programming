<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmValid.aspx.cs" Inherits="week5.FrmValid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <script type="text/javascript">
        function Valjumin(source, args) {
            var sn = args.Value;
            var chkDigit = 0;
            var weight = 2;

            for (var i = 0; i < 13; i++) {
                if (i == 6) {
                    continue;
                }

                cjkDigit += parseInt(sn.charAt(i)) * weight;
                weight++;

                if (weight > 9)
                    weight = 2;
            }

            chkDigit = (11 - (chkDigit % 11)) % 10;

            if (parseInt(sn.charAt(13)) == chkDigit)
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    </script>


</head>
<body>
    <form id="form1" runat="server">
        <div>
           <!--
                controlToValidate -> 컨트롤 할 이름
                setForcusOnError -> True
                Display -> Dynamic
            -->
            이름 : <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="이름을 입력해주세요" ControlToValidate="txtName" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator><br />

            비밀번호 : <asp:TextBox ID="txtPwd" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="비밀번호를 입력해주세요" ControlToValidate="txtPwd" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="4~10자 이내로 만들어주세요" ControlToValidate="txtPwd" Display="Dynamic" SetFocusOnError="True" ValidationExpression="\w{4,10}"></asp:RegularExpressionValidator><br />
            <!--
                ValidationExpression에 들어가는 형식?을 보고서 그대로 넣어주면 될것이다.

            -->

            비밀번호 확인 : <asp:TextBox ID="txtRPwd" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="비밀번호 확인을 입력해주세요" ControlToValidate="txtRPwd" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="비밀번호가 다르네요" ControlToCompare="txtPwd" ControlToValidate="txtRPwd" SetFocusOnError="True" Display="Dynamic"></asp:CompareValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="4~10자 이내로 만들어주세요" ControlToValidate="txtRPwd" Display="Dynamic" SetFocusOnError="True" ValidationExpression="\w{4,10}"></asp:RegularExpressionValidator><br />

            이메일 : <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="이메일을 입력해주세요" ControlToValidate="txtEmail" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="이메일 형식을 확인해주세요" ControlToValidate="txtEmail" Display="Dynamic" SetFocusOnError="True" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator><br />

            나이 : <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="나이를 입력해주세요" ControlToValidate="txtAge" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="0~120세까지 입력해주세요" ControlToValidate="txtAge" SetFocusOnError="True" Display="Dynamic" MaximumValue="120" MinimumValue="0" Type="Integer"></asp:RangeValidator><br />

            주민등록번호 : <asp:TextBox ID="txtRegident" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="주민번호를 입력해주세요" ControlToValidate="txtRegident" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="주민번호 형식이 맞지 않습니다" ControlToValidate="txtRegident" SetFocusOnError="True" Display="Dynamic" ValidationExpression="\d{6}-[1-4]\d{6}"></asp:RegularExpressionValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="형식이 맞지 않습니다" ControlToValidate="txtRegident" ClientValidationFunction="Valjumin" SetFocusOnError="True" Display="Dynamic" OnServerValidate="valNum"></asp:CustomValidator>
            <br />




            <hr />
            <asp:Button ID="btnExec" runat="server" Text="실행" OnClick="btnExec_click" />
            <asp:Button ID="btnCancel" runat="server" Text="Button" OnClick="btnCancel_click" />
            <!-- summary로 만들어준다 -->
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    </form>
</body>
</html>
