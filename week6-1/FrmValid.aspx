<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmValid.aspx.cs" Inherits="week6.FrmValid" %>

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

                chkDigit += parseInt(sn.charAt(i)) * weight;
                weight++;

                if (weight > 9)
		            weight = 2;
            }

            chkDigit = (11 - (chkDigit % 11)) % 10;

            if (parseInt(sn.charAt(13)) == chkDigit)
                args.IsValid = true;
            else
                args.IsValid = faluse;
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--
                테이블 안에 만들어서 이쁘게 만들어 줄 수 있음

            -->
            아이디 :
            <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            <!-- requiredField는 항상 넣는다 -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="아이디를 입력해주세요" ControlToValidate="txtId" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <br />

            비밀번호 :
            <asp:TextBox ID="txtPwd" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="비밀번호를 입력해주세요" ControlToValidate="txtPwd" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <!--
                일정한 규칙을 만들어줄 수도 있다
                RegularExpression
            -->
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="4~8자로 입력해주세요" ControlToValidate="txtPwd" SetFocusOnError="True" Display="Dynamic" ValidationExpression="\w{4,8}"></asp:RegularExpressionValidator>
            <br />

            비민번호 확인 :
            <asp:TextBox ID="txtRPwd" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="비밀번호 확인을 입력해주세요" ControlToValidate="txtRPwd" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="비밀번호가 일치하지 않습니다" Display="Dynamic" SetFocusOnError="True" ControlToCompare="txtPwd" ControlToValidate="txtRPwd"></asp:CompareValidator>
            <br />

            이메일 :
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="이메일을 입력해주세요" ControlToValidate="txtEmail" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="이메일 형식을 확인해주세요" ControlToValidate="txtEmail" SetFocusOnError="True" Display="Dynamic" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
            <br />

            나이 :
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="나이를 입력해주세요" ControlToValidate="txtAge" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <!--
                나이에 대한 부분을
                주의할 점은 type이 string이 아니라 integer을 해야합니다
            -->
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="0~120세까지 입력바랍니다" ControlToValidate="txtAge" MaximumValue="120" MinimumValue="0" SetFocusOnError="True" Type="Integer" Display="Dynamic"></asp:RangeValidator>
            <br />

            주민등록번호 :
            <asp:TextBox ID="txtJumin" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="주민번호를 입력해주세요" ControlToValidate="txtJumin" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="주민번호 형식에 맞게 입력해주세요" ControlToValidate="txtJumin" SetFocusOnError="True" Display="Dynamic" ValidationExpression="\d{6}-[1-4]\d{6}"></asp:RegularExpressionValidator>
            <!--
                주민번호가 맞는지 체크가 필요하다
                체크해주는 방식은 2가지 방식이 있다(client에서 스크립트 사용, server쪽에서 체크)
                넘어가는데,,,, 맞는지 틀린지 모른다
                client만으로 넘기는법을 찾아보자
            -->
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="맞지 않는 주민번호 입니다" ControlToValidate="txtJumin" ClientValidationFunction="Valjumin" SetFocusOnError="True" Display="Dynamic" OnServerValidate="CustomValidator1_ServerValidate" ></asp:CustomValidator>
            <br />

            <hr />
            <asp:Button ID="btnCancel" runat="server" Text="취소" OnClick="btnCancel_Click" />
            <asp:Button ID="btnExec" runat="server" Text="실행" OnClick="btnExec_Click" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    </form>
</body>
</html>
