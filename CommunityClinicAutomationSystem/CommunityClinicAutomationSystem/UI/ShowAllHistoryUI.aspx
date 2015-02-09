<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowAllHistoryUI.aspx.cs" Inherits="CommunityClinicAutomationSystem.UI.ShowAllHistoryUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal">

        <h1 class="bg-primary text-center text-capitalize">Community clinic automation system</h1>
        <ul class="nav nav-tabs nav-justified">
            <li role="presentation"><a href="MainUI.aspx">Home</a></li>
            <li role="presentation"><a href="CenterSaveUI.aspx">Create Center</a></li>
            <li role="presentation"><a href="LogInUI.aspx">Center Login</a></li>
            <li role="presentation"><a href="DoctorEntry.aspx">Save Doctor</a></li>
            <li role="presentation" class="active"><a href="ShowAllHistoryUI.aspx">Patient History</a></li>
            <li role="presentation"><a href="ViewPatientListForDoctor.aspx">Patient List</a></li>
            <li role="presentation"><a href="MedicineStockReort.aspx">Stock Report</a></li>
        </ul>

        <div>
            <h3 class="bg-info text-center text-capitalize">Show all history of patient</h3>

            <div class="form-group">
                <label for="voterIdTextBox" class="col-sm-2 text-right control-label">Voter Id</label>
                <div class="col-sm-8">
                    <asp:TextBox CssClass="form-control" ID="voterIdTextBox" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="nameTextBox" class="col-sm-2 text-right control-label">Name</label>
                <div class="col-sm-8">
                    <asp:TextBox CssClass="form-control" ID="nameTextBox" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="addressTextBox" class="col-sm-2 text-right control-label">Address</label>
                <div class="col-sm-8">
                    <asp:TextBox CssClass="form-control" ID="addressTextBox" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button CssClass="btn btn-info col-sm-2" ID="showHistoryButton" runat="server" Text="Show All History" />
                </div>
            </div>
            <asp:GridView CssClass="table table-bordered table-hover table-striped text-center" ID="showAllHistoryGridView" runat="server" AutoGenerateColumns="False"></asp:GridView>

        </div>
    </form>
</body>
</html>
