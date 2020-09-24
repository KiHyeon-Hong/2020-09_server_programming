<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmAd.aspx.cs" Inherits="week4.FrmAd" %>

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
                target을 _blink로 한다?


            -->
            <asp:AdRotator ID="Ad" runat="server" Target="_blank" AdvertisementFile="~/Documents/ad.xml" />
        </div>
    </form>
</body>
</html>
