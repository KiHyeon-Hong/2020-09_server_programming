<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmAd.aspx.cs" Inherits="MiddleTermStudy2.FrmAd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AdRotator ID="Ad" runat="server" Target="_blank" AdvertisementFile="~/Documents/ad.xml" />
        </div>
    </form>
</body>
</html>
