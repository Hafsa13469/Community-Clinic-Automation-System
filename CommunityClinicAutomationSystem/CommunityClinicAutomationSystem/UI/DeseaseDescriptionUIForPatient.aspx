﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeseaseDescriptionUIForPatient.aspx.cs" Inherits="CommunityClinicAutomationSystem.UI.DeseaseDescriptionUIForPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.css" rel="stylesheet" />
</head>
<body>

    <h1 class="bg-primary text-center text-capitalize">Community clinic automation system</h1>
    <ul class="nav nav-tabs nav-justified">
        <li role="presentation"><a href="MainUI.aspx">Home</a></li>
        <li role="presentation"><a href="CenterSaveUI.aspx">Center</a></li>
        <li role="presentation"><a href="LogInUI.aspx">Center Login</a></li>
        <li role="presentation" class="active"><a href="DeseaseDescriptionUIForPatient.aspx">Register Patient</a></li>
        <li role="presentation"><a href="ShowAllHistoryUI.aspx">Patient History</a></li>
        <li role="presentation"><a href="ViewPatientListForDoctor.aspx">Patient List</a></li>
        <li role="presentation"><a href="MedicineStockReort.aspx">Stock Report</a></li>
    </ul>


    <form id="form1" runat="server" class="form-horizontal">
        <div>

            <h3 class="bg-info text-center text-capitalize">Disease description for patient</h3>
            <div class="form-group">
                <asp:Label ID="centerId" runat="server" class="col-sm-2 text-center control-label"></asp:Label>
            </div>
            <div class="form-group">
                <label for="nationalId" class="col-sm-2 text-right control-label">Enter National ID</label>
                <div class="col-sm-8">
                    <asp:TextBox CssClass="form-control" ID="nationalId" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="doctorDropDownList1" class="col-sm-2 text-right control-label">Choose Doctor</label>
                <div class="col-sm-8">
                    <asp:DropDownList CssClass="col-sm-2 form-control" ID="doctorDropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <label for="descriptionTextBox" class="col-sm-2 text-right control-label">Description</label>
                <div class="col-sm-8">
                    <asp:TextBox CssClass="form-control" TextMode="MultiLine" ID="descriptionTextBox" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button CssClass="btn btn-info col-sm-2" ID="RequestButton" runat="server" Text="Request Treatment" OnClick="RequestButton_Click" />
                </div>
            </div>

        </div>
    </form>
</body>
</html>
