<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorEntry.aspx.cs" Inherits="CommunityClinicAutomationSystem.UI.DoctorEntry" %>

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
        <li role="presentation"><a href="CenterSaveUI.aspx">Center Create</a></li>
        <li role="presentation"><a href="LogInUI.aspx">Center Login</a></li>
        <li role="presentation" class="active"><a href="DoctorEntry.aspx">Save Doctor</a></li>
      <%--  <li role="presentation"><a href="ShowAllHistoryUI.aspx">Patient History</a></li>--%>
       <%-- <li role="presentation"><a href="ViewPatientListForDoctor.aspx">Patient List</a></li>--%>
        <li role="presentation"><a href="MedicineStockReort.aspx">Stock Report</a></li>
    </ul>

    <form id="form1" runat="server" class="form-horizontal">

        <div>
            <h3 class="bg-info text-center text-capitalize">Enter doctor information to save</h3>
            <div class="form-group">
                <asp:Label ID="centerId" runat="server" class="col-sm-2 text-center control-label"></asp:Label>
            </div>
            <div class="form-group">
                <label for="nameTextBox" class="col-sm-2 text-right control-label">Name</label>
                <div class="col-sm-8">
                    <asp:TextBox CssClass="form-control" ID="nameTextBox" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="degreeTextBox" class="col-sm-2 text-right control-label">Degree</label>
                <div class="col-sm-8">
                    <asp:TextBox CssClass="form-control" ID="degreeTextBox" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="spTextBox" class="col-sm-2 text-right control-label">Specialization</label>
                <div class="col-sm-8">
                    <asp:TextBox CssClass="form-control" TextMode="MultiLine" ID="spTextBox" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button CssClass="btn btn-info col-sm-2" ID="SaveButton" runat="server" Text="Save Doctor" OnClick="SaveButton_Click" />
                </div>
            </div>
        <div class="form-group">
            <asp:Label ID="saveText" runat="server" class="col-sm-2 text-center control-label"></asp:Label>
        </div>
        </div>
    </form>
</body>
</html>
