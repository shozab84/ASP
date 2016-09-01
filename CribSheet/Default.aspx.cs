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

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            CheckButtonOutput.Text = "Thank you for checking the box.";
        }

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        if(RadioButton1.Checked)
        {
            RadioButtonOutput.Text = "Thanks for clicking the radio button."; // this label is for displaying the output when radio button is checked
        }    

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int Length = TextBox1.Text.Length;
        TextBoxOutput.Text = "You typed " + Length + " characters in this text box";// this label is for displaying the output when user enters something in the text box and click the button
    }
}