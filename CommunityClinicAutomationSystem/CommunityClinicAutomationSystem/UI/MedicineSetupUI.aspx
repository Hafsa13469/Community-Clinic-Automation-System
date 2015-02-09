<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MedicineSetupUI.aspx.cs" Inherits="CommunityClinicAutomationSystem.UI.MedicineSetupUI" %>

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
        <li role="presentation"><a href="DiseaseSaveUI.aspx">Disease Setup</a></li>
        <li role="presentation" class="active"><a href="MedicineSetupUI.aspx">Medicine Setup</a></li>
        <li role="presentation"><a href="SendMedicine.aspx">Send Medicine</a></li>
        <li role="presentation"><a href="MedicineStockReort.aspx">Stock Report</a></li>
        <li role="presentation"><a href="CenterSaveUI.aspx">Center</a></li>
    </ul>

    <form id="form1" runat="server" class="form-horizontal">
        <div>

            <h3 class="bg-info text-center text-capitalize">Enter medicine info</h3>

            <div class="form-group">
                <label for="genericNameTextBox" class="col-sm-2 text-right control-label">Generic Medicine Name</label>
                <div class="col-sm-8">
                    <asp:TextBox CssClass="form-control" ID="genericNameTextBox" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="powerTextBox" class="col-sm-2 text-right control-label">Power</label>
                <div class="col-sm-8">
                    <asp:TextBox CssClass="form-control" ID="powerTextBox" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="typeDropDownList" class="col-sm-2 text-right control-label">Type</label>
                <div class="col-sm-8">
                    <asp:DropDownList CssClass="col-sm-2 form-control" ID="typeDropDownList" runat="server" AutoPostBack="True">
                        <asp:ListItem>mg</asp:ListItem>
                        <asp:ListItem>ml</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button CssClass="btn btn-info col-sm-2" ID="saveButton" runat="server" Text="Save Medicine" OnClick="SaveButton_Click"></asp:Button>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="msgLabel" runat="server" class="col-sm-2 text-center control-label"></asp:Label>
            </div>

        </div>
    </form>
</body>
</html>
