<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendMedicine.aspx.cs" Inherits="CommunityClinicAutomationSystem.UI.SendMedicine" EnableEventValidation="false" %>

<!DOCTYPE html>
<html ng-app="myApp">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.css" rel="stylesheet" />
</head>
<body ng-controller="myController">

    <h1 class="bg-primary text-center text-capitalize">Community clinic automation system</h1>
    <ul class="nav nav-tabs nav-justified">
        <li role="presentation"><a href="MainUI.aspx">Home</a></li>
        <li role="presentation"><a href="DiseaseSaveUI.aspx">Disease Setup</a></li>
        <li role="presentation"><a href="MedicineSetupUI.aspx">Medicine Setup</a></li>
        <li role="presentation"><a href="CenterSaveUI.aspx">Create Center</a></li>
        <li role="presentation" class="active"><a href="SendMedicine.aspx">Send Medicine</a></li>
        <li role="presentation"><a href="LogInUI.aspx">Center Login</a></li>
    </ul>


    <form id="form1" runat="server" class="form-horizontal">
        <div>

            <h3 class="bg-info text-center text-capitalize">Select center to send medicine</h3>
            <div class="form-group">
                <label for="districtDropDownList" class="col-sm-2 text-right control-label">District</label>
                <div class="col-sm-8">
                    <asp:DropDownList CssClass="col-sm-2 form-control" ID="districtDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="districtDropDownList_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <label for="thanaDropDownList" class="col-sm-2 text-right control-label">Thana</label>
                <div class="col-sm-8">
                    <asp:DropDownList CssClass="col-sm-2 form-control" ID="thanaDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="thanaDropDownList_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <label for="centerDropDownList" class="col-sm-2 text-right control-label">Center</label>
                <div class="col-sm-8">
                    <asp:DropDownList CssClass="col-sm-2 form-control" ID="centerDropDownList" runat="server" AutoPostBack="True"></asp:DropDownList>
                </div>
            </div>

            <h3 class="bg-info text-center text-capitalize">Add medicine</h3>
            <div class="form-group">
                <label for="medicineDropDownList" class="col-sm-2 text-right control-label">Select Medicine</label>
                <div class="col-sm-8">
                    <asp:DropDownList ng-model="name" CssClass="col-sm-2 form-control" ID="medicineDropDownList" runat="server" AutoPostBack="False"></asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <label for="quantityTextBox" class="col-sm-2 text-right control-label">Quantity</label>
                <div class="col-sm-8">
                    <asp:TextBox ng-model="quantity" CssClass="form-control" ID="quantityTextBox" placeholder="Quantity" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="button" Class="btn-btn-success" id="addbutton" runat="server" ng-click="AddMedicine(name,quantity)">Add</button>
                </div>
            </div>
        </div>

        <div class="form-group center-block">
            <table class="table table-hover text-center" id="tbl" runat="server">
                <thead>
                    <tr>
                        <td>Name</td>
                        <td>Quantity</td>
                    </tr>
                </thead>
                <tbody>
                    <tr ng-repeat="aMedicine in medicines">
                        <td>{{aMedicine.Name}}</td>
                        <td>{{aMedicine.Quantity}}</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <input type="hidden" id="medicineName" value="" runat="server" />
        <input type="hidden" id="medicineQuantity" value="" runat="server" />

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <asp:Button CssClass="btn btn-info col-sm-2" ID="saveButton" runat="server" Text="Save Medicine" OnClick="SaveButton_Click"></asp:Button>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="statusLabel" runat="server" class="col-sm-2 text-center control-label"></asp:Label>
        </div>

    </form>
    <script src="../Scripts/angular.js"></script>

    <script>
        var myApplication = angular.module("myApp", []);
        myApplication.controller("myController", function ($scope) {
            $scope.medicines = [];
            $scope.AddMedicine = function (name, quantity) {

                $scope.medicines.push({ Name: name, Quantity: quantity });
                var medicineName = name.split(",");
                document.getElementById("medicineName").value += medicineName[0] + ",";
                document.getElementById("medicineQuantity").value += quantity + ",";
            };
        });
    </script>
</body>
</html>
