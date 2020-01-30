<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ConfigurationSamples.Admin.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <!--Connection String from web.config" -->
        <asp:Label runat="server" ID="test" Font-Bold="true" Text="<%$ connectionStrings: AdminConnection %>" ></asp:Label>
        </div>
    </form>
</body>
</html>
