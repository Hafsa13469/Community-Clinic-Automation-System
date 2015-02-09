<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayCodeAndPasswordUI.aspx.cs" Inherits="CommunityClinicAutomationSystem.UI.DisplayCodeAndPasswordUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.css" rel="stylesheet" />
</head>
<body>
    <div>
        <h1 class="bg-primary text-center text-capitalize">Community clinic automation system</h1>
        <ul class="nav nav-tabs nav-justified">
            <li role="presentation"><a href="MainUI.aspx">Home</a></li>
            <li role="presentation"><a href="CenterSaveUI.aspx">Center</a></li>
            <li role="presentation"><a href="LogInUI.aspx">Center Login</a></li>
        </ul>
    </div>
    <br />

    <form id="form1" runat="server" class="form-horizontal">
        <div style="height: 142px">

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-8">
                    <asp:Label CssClass="bg-success text-center form-control" role="alert" ID="nameLabel" runat="server"></asp:Label>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-8">
                    <asp:Label CssClass="bg-success text-center form-control" role="alert" ID="codeLabel" runat="server"></asp:Label>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-8">
                    <asp:Label CssClass="bg-success text-center form-control" role="alert" ID="passwordLabel" runat="server"></asp:Label>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
