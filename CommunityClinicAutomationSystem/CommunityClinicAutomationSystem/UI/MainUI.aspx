<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainUI.aspx.cs" Inherits="CommunityClinicAutomationSystem.UI.MainUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.css" rel="stylesheet" />

    <style>
        body {
            background-image: url('bgmedical.jpg');
        }
    </style>

</head>
<body>
    <form id="form1" runat="server" class="form-horizontal">

        <h1 class="bg-primary text-center text-capitalize">Community clinic automation system</h1>
        <ul class="nav nav-tabs nav-justified text-uppercase h4">
            <li role="presentation" class="active"><a href="MainUI.aspx">Home</a></li>
            <li role="presentation"><a href="DiseaseSaveUI.aspx">Head Office</a></li>
            <li role="presentation"><a href="CenterSaveUI.aspx">Center</a></li>
          <%--  <li role="presentation"><a href="MedicineStockReort.aspx">Stock Report</a></li>--%>
        </ul>

    </form>
</body>
</html>
