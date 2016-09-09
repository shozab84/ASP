<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
   
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Script/jquery-3.1.0.js"></script>
    <link href="Content/StyleSheet.css" rel="stylesheet" />
    <link href="Content/StyleChart.css" rel="stylesheet" />
    <script src="Script/ChartCreation.js"></script>

    <title>Household budget Calculator</title>
</head>
<body>
    
    
         <div class ="container heading">
           <div class="model text-center">
             <h1> Household Budget Planner</h1>
             <h3> Budget Planner puts you in control of your household spending and analyses your results to help you take control of your money.
                  Enter how much your Family earns and spend on Household, Travel, Food, Entertainment, Family and Friends every month.
             </h3>
           </div>
         </div>    
   
        <hr class="top"/>
        <form id="form2" runat="server" class="form-horizontal">   
            <div class="container content">
            <br />
             <div class="row">             
                      <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert-danger" HeaderText="Enter only digits in the following fields:" BorderStyle="Solid" BorderWidth="2px" BorderColor="Red" />
                      <h4> Family Income: </h4>
                      <br />
                         <div class ="col-md-6">
                            <div class ="row">
                                <div class ="col-md-4 col-md-offset-1">
                                    <asp:Label ID="IncomeLabel" runat="server" Text="Monthly Income (After Tax)"></asp:Label>
                                </div>
                                <div class ="col-md-6">
                                    <asp:TextBox ID="IncomeTextBox" runat="server" Text="IncomeTextBox"></asp:TextBox>
                                    <asp:CompareValidator ID="IncomeCV" runat="server" ErrorMessage="Income" CssClass="text-danger" Type="Currency" Operator="DataTypeCheck" ControlToValidate="IncomeTextBox"></asp:CompareValidator>
                                </div>

                           </div>
                         
                         </div>
                           
                         <br />   
               


        <h4>Essentials</h4>
        <asp:Label ID="RentOrMortgageLabel" runat="server" Text="Rent or Mortgage"></asp:Label>
        <asp:TextBox ID="RentOrMortgageTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="FoodAndGroceriesLabel" runat="server" Text="Food and groceries"></asp:Label>
        <asp:TextBox ID="FoodAndGroceriesTextBox" runat="server"></asp:TextBox>
        <br />
        <br />

        <h4> Bills: </h4>

        <asp:Label ID="ElectricityLabel" runat="server" Text="Electricity"></asp:Label>
        <asp:TextBox ID="ElectricityTextBox" runat="server">0.00</asp:TextBox>
        <br />
        <asp:Label ID="GasLabel" runat="server" Text="Gas"></asp:Label>
        <asp:TextBox ID="GasTextBox" runat="server">0.00</asp:TextBox>
        <br />
        <asp:Label ID="WaterLabel" runat="server" Text="Water"></asp:Label>
        <asp:TextBox ID="WaterTextBox" runat="server">0.00</asp:TextBox>
        <br />
        <asp:Label ID="CouncilTaxLabel" runat="server" Text="Council Tax"></asp:Label>
        <asp:TextBox ID="CouncilTaxTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="MobileLabel" runat="server" Text="Mobile Phones"></asp:Label>
        <asp:TextBox ID="MobileTextBox" runat="server">0.00</asp:TextBox>
        <br />
        <asp:Label ID="PhoneBroadbandLabel" runat="server" Text="Phone & Broadband "></asp:Label>
        <asp:TextBox ID="PhoneBroadbandTextBox" runat="server">0.00</asp:TextBox>
        <br />
        <asp:Label ID="DigitaltvLabel" runat="server" Text="Digital TV (e.g SKY/Virgin/TalkTalk/BT) "></asp:Label>
        <asp:TextBox ID="DigitaltvTextBox" runat="server">0.00</asp:TextBox>
        <br />
        <asp:Label ID="TvLicenceLabel" runat="server" Text="TV Licence"></asp:Label>
        <asp:TextBox ID="TvLicenceTextBox" runat="server">0.00</asp:TextBox>
        <br />
        <asp:Label ID="HomeInsuranceLabel" runat="server" Text="Home Insurance"></asp:Label>
        <asp:TextBox ID="HomeInsuranceTextBox" runat="server">0.00</asp:TextBox>
        <br />
        <asp:Label ID="ServiceChargeLabel" runat="server" Text="Service Charge & ground rent (living in a Flat)"></asp:Label>
        <asp:TextBox ID="ServiceChargeTextBox" runat="server">0.00</asp:TextBox>
        <br />
        <br />
        

        <h4> Transport: </h4>
        
        <asp:Label ID="FuelLabel" runat="server" Text="Fuel"></asp:Label>
        <asp:TextBox ID="FuelTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="CarInsuranceLabel" runat="server" Text="Car Insurance"></asp:Label>
        <asp:TextBox ID="CarInsuranceTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="RoadTaxMOTLabel" runat="server" Text="Road Tax and MOT"></asp:Label>
        <asp:TextBox ID="RoadTaxMOTTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="CarMaintenanceLabel" runat="server" Text="Car Maintenance"></asp:Label>
        <asp:TextBox ID="CarMaintenanceTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="ParkingLabel" runat="server" Text="Parking"></asp:Label>
        <asp:TextBox ID="ParkingTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="PublicTransportLabel" runat="server" Text="Public Transport"></asp:Label>
        <asp:TextBox ID="PublicTransportTextBox" runat="server"></asp:TextBox>
        <br />
        
        <h4>Family and Kids</h4>

        <asp:Label ID="ChildCareLabel" runat="server" Text="Childcare"></asp:Label>
        <asp:TextBox ID="ChildCareTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        
        <asp:Button ID="CalculateButton" runat="server" Text="Calculate" OnClick="CalculateButton_Click1" />
       
         <div class="col-md-7">
                    
                    <div id="chartContainerExp" style="height: 300px; width: 100%">
                        <div id="chartPlaceholderExp"></div>
                        <div id="noDataPlaceholderExp" class="h1"></div>
                    </div>
                </div>

        <br />

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <div id="test"></div>
           
   
  </form>  
</body>
</html>
