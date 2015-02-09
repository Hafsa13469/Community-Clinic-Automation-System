<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MedicineStockReort.aspx.cs" Inherits="CommunityClinicAutomationSystem.UI.MedicineStockReort" %>

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
        <li role="presentation"><a href="DoctorEntry.aspx">Save Doctor</a></li>
        <li role="presentation"><a href="ShowAllHistoryUI.aspx">Patient History</a></li>
        <li role="presentation"><a href="ViewPatientListForDoctor.aspx">Patient List</a></li>
        <li role="presentation" class="active"><a href="MedicineStockReort.aspx">Stock Report</a></li>
    </ul>

    <form id="form1" runat="server">
        <div>

            <h3 class="bg-info text-center text-capitalize">Medicine stock report</h3>
            <asp:GridView CssClass="table table-bordered table-hover table-striped text-center" ID="ReportGridView" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Medicine Name" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>
