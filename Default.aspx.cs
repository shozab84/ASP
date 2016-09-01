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

    protected void ButtonName_Click(object sender, EventArgs e)
    {
        LabelNameOutput.Text = "Hello, " + TextBoxName.Text;
    }

    protected void ButtonCheckBox_Click(object sender, EventArgs e)
    {

        if (CheckBox1.Checked)

        {

            LabelCheckBoxOutput.Text = "The checkbox has been checked";
        }

        else
        {
            LabelCheckBoxOutput.Text = "The Checkbox has not been checked";
        }



    }

    protected void ButtonCheckBox_Click1(object sender, EventArgs e)
    {

    }





    protected void ButtonRadioButton_Click(object sender, EventArgs e)
    {

        if (RadioButton1.Checked)

        {

            LabelRadioButtonOutput.Text = "The radio button has been selected";
        }

       


    }
}