using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonCheckBox_Click(object sender, EventArgs e)// event happens on clicking the ButtonChechBox button
    {
        if (CheckBox1.Checked)
        {
            CheckBoxLabel.Text = "Thank you for checking the Check box.";
        }

    }

    protected void ButtonRadioButton_Click(object sender, EventArgs e)
    {
        if(RadioButton1.Checked)
        {
            RadioButtonLabel.Text = "Thanks for clicking the radio button."; // this label is for displaying the output when radio button is checked
        }    

    }

    protected void ButtonTextBoxMultiLine_Click(object sender, EventArgs e)
    {
        int Length = TextBoxMultiLine.Text.Length;
        TextBoxMultiLineLabel.Text = "You typed " + Length + " characters in this text box";// this label is for displaying the output when user enters something in the text box and click the button
    }





    protected void ButtonIceCream_Click(object sender, EventArgs e)
    {

        FavouriteIceCream.Text = "";
        foreach (ListItem item in FavouriteIceCream.Items)// here collection is FavouriteIceCream.Items and ListItem is variable
        {        
            if(item.Selected == true)
                {
                    FavouriteIceCreamLabel.Text = "From the checkbox list, you like:" + item.Value + " ice cream.</br>";
                //.text -sets the text content of the lablel
                }
        }

    }
}