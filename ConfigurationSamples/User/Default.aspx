<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ConfigurationSamples.User.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        Connection String from web.config" <asp:Label Font-Bold="true" Text="<%$ connectionStrings:UserConnection %>" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
