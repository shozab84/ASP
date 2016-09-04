using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{


    protected void ButtonCheckBox_Click(object sender, EventArgs e)// event happens on clicking the ButtonChechBox button
    {
        if (CheckBox1.Checked)
        {
            CheckBoxLabel.Text = "Thank you for checking the Check box.";
        }

    }

    protected void ButtonRadioButton_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {
            RadioButtonLabel.Text = "Thanks for clicking the radio button."; // this label is for displaying the output when radio button is checked
        }

    }

    protected void ButtonTextBoxMultiLine_Click(object sender, EventArgs e)
    {
        int Length = TextBoxMultiLine.Text.Length;
        TextBoxMultiLineLabel.Text = "You typed " + Length + " characters in this text box";// this label is for displaying the output when user enters something in the text box and click the button
    }






    // this code is for type of ice cream checkbox
    protected void ButtonIceCream_Click(object sender, EventArgs e)
    {

        FavouriteIceCreamLabel.Text = "";//this removes any previous text from the list
        foreach (ListItem item in FavouriteIceCream.Items)// here collection is FavouriteIceCream.Items and ListItem is variable
        {        //ListItem is the datatype of the collection 
            if (item.Selected == true)
            {
                FavouriteIceCreamLabel.Text = "From the checkbox list, you like:" + item.Value + " ice cream.</br>";
                //.text -sets the text content of the lablel
            }
        }

    }


    // generated after double clicking on Calender in Default.aspx (Design view)
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

        CalendarLabel.Text = "The date you selected is: " + Calendar1.SelectedDate.ToShortDateString();
        //.toShortDateString shorten the string from example - 10-09-2016 00:00:00 to 10/09/2016 
        //() is used because its a method.


    }

    // this code is for favourite language drop down
    protected void ButtonConfirmLanguage_Click(object sender, EventArgs e)
    {
        FavouriteLanguageLabel.Text = "From the drop-down list, your chosen language is:" + FavouriteLanguage.SelectedItem + ".";
    }




    protected void ButtonRadioButtonListMusic_Click(object sender, EventArgs e)
    {
        RadioButtonListMusicLabel.Text = "Wow!You prefer " + RadioButtonListMusic.SelectedItem +
            " to the other music in the list.";
    }




    protected void ButtonChelseaManager_Click(object sender, EventArgs e)
    {
        ChelseaManagerLabel.Text = "";

        String manager = "";

        for (int i = 0; i < ChelseaManagerListBox.Items.Count; i++)
        {

            if (ChelseaManagerListBox.Items[i].Selected == true)
            {
                if (ChelseaManagerListBox.GetSelectedIndices().Count() > 1)
                {
                    manager += "and";
                }

                manager += ChelseaManagerListBox.Items[i].ToString() + " ";
            }
            ChelseaManagerLabel.Text = "You think that " + manager + " should be the next Chelsea manager. ";



        }
    }
}