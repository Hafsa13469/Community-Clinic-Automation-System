<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CenterSaveUI.aspx.cs" Inherits="CommunityClinicAutomationSystem.UI.CenterSaveUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Save Center</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.css" rel="stylesheet" />
</head>
<body>

    <h1 class="bg-primary text-center text-capitalize">Community clinic automation system</h1>
    <ul class="nav nav-tabs nav-justified">
        <li role="presentation"><a href="MainUI.aspx">Home</a></li>
        <li role="presentation" class="active"><a href="CenterSaveUI.aspx">Create Center</a></li>
        <li role="presentation"><a href="LogInUI.aspx">Center Login</a></li>
      <%--  <li role="presentation"><a href="DoctorEntry.aspx">Save Doctor</a></li>--%>
<%--        <li role="presentation"><a href="ShowAllHistoryUI.aspx">Patient History</a></li>
     --%><%--   <li role="presentation"><a href="ViewPatientListForDoctor.aspx">Patient List</a></li>--%>
       <%-- <li role="presentation"><a href="MedicineStockReort.aspx">Stock Report</a></li>--%>
    </ul>



    <form id="form1" runat="server" class="form-horizontal">

        <h3 class="bg-info text-center text-capitalize">Enter center info to create center</h3>

        <div class="form-group">
            <label for="centerNameText" class="col-sm-2 text-right control-label">Center Name</label>
            <div class="col-sm-8">
                <asp:TextBox CssClass="form-control" ID="centerNameText" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label for="districtDropDown" class="col-sm-2 text-right control-label">District</label>
            <div class="col-sm-8">
                <asp:DropDownList CssClass="col-sm-2 form-control" ID="districtDropDown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="districtDropDown_SelectedIndexChanged"></asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <label for="thanaDropDown" class="col-sm-2 text-right control-label">Thana</label>
            <div class="col-sm-8">
                <asp:DropDownList CssClass="col-sm-2 form-control" ID="thanaDropDown" runat="server" AutoPostBack="True"></asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <asp:Button CssClass="btn btn-info col-sm-2" ID="centerSaveButton" runat="server" Text="Save Center" OnClick="centerSaveButton_Click" />
            </div>
        </div>
        <br />
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-8">
                <asp:Label CssClass="bg-danger text-center form-control" ID="messageLabel" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
