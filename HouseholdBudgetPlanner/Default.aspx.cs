using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    double Income, RentOrMortgage, FoodAndGroceries, Electricity, Gas, Water, CouncilTax, Mobile, PhoneBroadband,
           Digitaltv, TvLicence, HomeInsurance, ServiceCharge, Fuel, CarInsurance, RoadTaxMOT, CarMaintenance,
           Parking, PublicTransport, ChildCare;


    protected void Page_Load(object sender, EventArgs e)
    {
        

    }

    protected void CalculateButton_Click(object sender, EventArgs e)
    {

        CalculateExpenses();// calling CalculateExpenses function/method when user clicks Calculate button

    }


    private double getUserData(TextBox txtBoxValue)// we have created a function getUserData that reads whatever user enters in a text boxes 
    {
        if (!string.IsNullOrWhiteSpace(txtBoxValue.Text))
        {
            return double.Parse(txtBoxValue.Text);
        }
        else
            return 0;

    }
    //private double getUserData(string txtBoxValue)// we have created a function getUserData that reads whatever user enters in a text boxes 
    //{
    //    if (!string.IsNullOrWhiteSpace(txtBoxValue))
    //    {
    //        return double.Parse(txtBoxValue);
    //    }
    //    else
    //        return 0;

        //}

    private void CalculateExpenses()// this is our function to calculate expenses
    {
        double bills, essentials,transport,kids,totalExp;
        string chartType = "pie";
        //Type Expenses = GetType();

        Income = getUserData(IncomeTextBox);// passing value or parameter, here i have passed id of Income text box
        RentOrMortgage = getUserData(RentOrMortgageTextBox);
        FoodAndGroceries = getUserData(FoodAndGroceriesTextBox);
        Electricity = getUserData(ElectricityTextBox);
        Gas = getUserData(GasTextBox);
        Water = getUserData(WaterTextBox);
        CouncilTax = getUserData(CouncilTaxTextBox);
        Mobile = getUserData(MobileTextBox);
        PhoneBroadband = getUserData(PhoneBroadbandTextBox);
        Digitaltv = getUserData(DigitaltvTextBox);
        TvLicence = getUserData(TvLicenceTextBox);
        HomeInsurance = getUserData(HomeInsuranceTextBox);
        ServiceCharge = getUserData(ServiceChargeTextBox);
        Fuel = getUserData(FuelTextBox);
        CarInsurance = getUserData(CarInsuranceTextBox);
        RoadTaxMOT = getUserData(RoadTaxMOTTextBox);
        CarMaintenance = getUserData(CarMaintenanceTextBox);
        Parking = getUserData(ParkingTextBox);
        PublicTransport = getUserData(PublicTransportTextBox);
        ChildCare = getUserData(ChildCareTextBox);

        essentials = RentOrMortgage + FoodAndGroceries;
        bills = Electricity + Gas + Water + CouncilTax + Mobile + PhoneBroadband + Digitaltv + 
                TvLicence + HomeInsurance + ServiceCharge;
        transport = Fuel + CarInsurance + RoadTaxMOT + CarMaintenance + Parking + PublicTransport;
        kids = ChildCare;
        totalExp = essentials + bills + transport + kids;

       ClientScript.RegisterStartupScript(this.GetType(), "draw1", "drawExp('" + chartType + "','" + essentials + "','" + bills + "','" + transport + "','" + kids + "','" + totalExp + "');", true);





    }






}