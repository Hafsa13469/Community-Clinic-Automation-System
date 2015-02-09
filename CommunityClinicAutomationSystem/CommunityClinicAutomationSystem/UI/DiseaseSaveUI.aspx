<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DiseaseSaveUI.aspx.cs" Inherits="CommunityClinicAutomationSystem.UI.DiseaseSaveUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Save Disease</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.css" rel="stylesheet" />
</head>
<body>

    <h1 class="bg-primary text-center text-capitalize">Community clinic automation system</h1>
    <ul class="nav nav-tabs nav-justified">
        <li role="presentation"><a href="MainUI.aspx">Home</a></li>
        <li role="presentation" class="active"><a href="DiseaseSaveUI.aspx">Disease Setup</a></li>
        <li role="presentation"><a href="MedicineSetupUI.aspx">Medicine Setup</a></li>
        <li role="presentation"><a href="SendMedicine.aspx">Send Medicine</a></li>
        <li role="presentation"><a href="MedicineStockReort.aspx">Stock Report</a></li>
        <li role="presentation"><a href="CenterSaveUI.aspx">Center</a></li>
    </ul>


    <form id="form1" runat="server" class="form-horizontal">
        <div>
            <h3 class="bg-info text-center text-capitalize">Enter disease info to save disease</h3>

            <div class="form-group">
                <label for="diseaseNameTextBox" class="col-sm-2 text-right control-label">Disease Name</label>
                <div class="col-sm-8">
                    <asp:TextBox CssClass="form-control" ID="diseaseNameTextBox" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="descriptionTextBox" class="col-sm-2 text-right control-label">Description</label>
                <div class="col-sm-8">
                    <asp:TextBox CssClass="form-control" TextMode="MultiLine" ID="descriptionTextBox" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="treatmentProcedureTextBox" class="col-sm-2 text-right control-label">Treatment Procedure</label>
                <div class="col-sm-8">
                    <asp:TextBox CssClass="form-control" TextMode="MultiLine" ID="treatmentProcedureTextBox" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="preferredDrugsTextBox" class="col-sm-2 text-right control-label">Preferred Drugs</label>
                <div class="col-sm-8">
                    <asp:TextBox CssClass="form-control" TextMode="MultiLine" ID="preferredDrugsTextBox" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button CssClass="btn btn-info col-sm-2" ID="saveDiseaseButton" runat="server" Text="Save Disease" OnClick="saveDiseaseButton_Click" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-8">
                    <asp:Label CssClass="bg-danger text-center form-control" ID="messageLabel" runat="server"></asp:Label>
                </div>
            </div>


        </div>
    </form>
</body>
</html>
