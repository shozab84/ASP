<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <h1> Household Budget Calculator</h1>
        <br />
        
        <h3> Budget Planner puts you in control of your household spending and analyses your results to help you take control of your money.</h3>
        <h3> Enter how much your Family earns and spend on Household, Travel, Food, Entertainment, Family & Friends every month</h3>
        <br />
        <br />
        
        <h4> Family Income: </h4>
        <asp:Label ID="salaryLabel" runat="server" Text="Salary (After Tax)"></asp:Label>
        <asp:TextBox ID="salaryTextBox" runat="server">0.00</asp:TextBox>
        <br />
        <asp:Label ID="partnerSalaryLabel" runat="server" Text="Partner's Monthly Income"></asp:Label>
        <asp:TextBox ID="partnerSalaryTextBox" runat="server">0.00</asp:TextBox>
        <br />
        <asp:Label ID="benefitsLabel" runat="server" Text="Benefits"></asp:Label>
        <asp:TextBox ID="benefitsTextBox" runat="server">0.00</asp:TextBox>
        <br />
        <asp:Label ID="otherIncomeLabel" runat="server" Text="Other Income (e.g. maintenance payments)"></asp:Label>
        <asp:TextBox ID="otherIncomeTextBox" runat="server"></asp:TextBox>
        <br />
        <br />

        <h4> HouseHold: </h4>

        <asp:Label ID="electricityLabel" runat="server" Text="Electricity"></asp:Label>
        <asp:TextBox ID="electricityTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="gasLabel" runat="server" Text="Gas"></asp:Label>
        <asp:TextBox ID="gasTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="waterLabel" runat="server" Text="Water"></asp:Label>
        <asp:TextBox ID="waterTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="mobileLabel" runat="server" Text="Mobile Phones"></asp:Label>
        <asp:TextBox ID="mobileTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="phoneBroadbandLabel" runat="server" Text="Phone & Broadband "></asp:Label>
        <asp:TextBox ID="phoneBroadbandTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="digitaltvLabel" runat="server" Text="Digital TV (e.g SKY/Virgin/TalkTalk/BT) "></asp:Label>
        <asp:TextBox ID="digitaltvTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="tvLicenceLabel" runat="server" Text="TV Licence"></asp:Label>
        <asp:TextBox ID="tvLicenceTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="homeInsuranceLabel" runat="server" Text="Home Insurance"></asp:Label>
        <asp:TextBox ID="homeInsuranceTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="serviceChargeLabel" runat="server" Text="Service Charge & ground rent (living in a Flat)"></asp:Label>
        <asp:TextBox ID="serviceChargeTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="groceriesLabel" runat="server" Text="Groceries"></asp:Label>
        <asp:TextBox ID="groceriesTextBox" runat="server"></asp:TextBox>
        <br />
        <br />

        <h4> Travel: </h4>
        
        <asp:Label ID="Label14" runat="server" Text="Fuel(Petrol/Diesel)"></asp:Label>
        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label15" runat="server" Text="Car Insurance (including breakdown cover)"></asp:Label>
        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label17" runat="server" Text="Road Tax (Car)"></asp:Label>
        <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label18" runat="server" Text="Car Maintenance (including MOT)"></asp:Label>
        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label19" runat="server" Text="Public Transport (Bus/Tube/Tram) "></asp:Label>
        <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
        <br />
        
         <h4> Leisure: </h4>

        <asp:Label ID="Label16" runat="server" Text="Eating Out"></asp:Label>
        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label20" runat="server" Text="Cinema,Books, Music, Games etc "></asp:Label>
        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label21" runat="server" Text="Lottery & gambling "></asp:Label>
        <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label22" runat="server" Text="Sport & gym Membership"></asp:Label>
        <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label23" runat="server" Text="Days Out"></asp:Label>
        <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
        <br />

         <h4> Debt Payments: </h4>

        <asp:Label ID="Label24" runat="server" Text="Mortgage repayment "></asp:Label>
        <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label25" runat="server" Text="Student Loan"></asp:Label>
        <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label26" runat="server" Text="Credit Card Payment"></asp:Label>
        <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label27" runat="server" Text="Car Loan/Lease repayment"></asp:Label>
        <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label28" runat="server" Text="Personal Loan repayment"></asp:Label>
        <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
        <br />

         <h4> Family: </h4>
        <asp:Label ID="Label30" runat="server" Text="School fees "></asp:Label>
        <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label31" runat="server" Text="Vet bills"></asp:Label>
        <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label32" runat="server" Text="Pet insurance"></asp:Label>
        <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Calculate" OnClick="Button1_Click" />

        <br />
        <br /> 
        <asp:Label ID="totalIncomeOutput" runat="server" Text=""></asp:Label>
        <br />

    </div>
    </form>
</body>
</html>
