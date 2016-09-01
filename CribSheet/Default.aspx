<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1> Here are some examples from the ASP.NET crib sheet</h1>
        <h3> Standard controls</h3>
    
        <h4>  Simple controls</h4>
    
        <asp:Label ID="Label1" runat="server" Text="Here is a check box:"></asp:Label>
        <br />
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" />

        <asp:Label ID="Label2" runat="server" Text="Please check this checkbox and click the button "></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Check Box Button" OnClick="Button1_Click" />

        <br />
        <br />
        <asp:Label ID="CheckButtonOutput" runat="server" Text=""></asp:Label>

        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.justit.co.uk/">LinkButton, which is just a link really </asp:HyperLink> 
        <br />
        <br />

        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://www.justit.co.uk/">
Here is a link to another website (but the HTML anchor tag works just as well) </asp:HyperLink>

        <asp:Label ID="Label3" runat="server" Text="Just had to do this :-) Click on the image button to follow the link:"></asp:Label>
        <br />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="http://t0.gstatic.com/images?q=tbn:ANd9GcT6nGxj1D4P-9EiVSY32sb6Ql-XQrbeK5FgM37UI6QxcZwfcfVw" PostBackUrl="http://www.starwars.com/the-force-awakens/" />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="This is an Image Map. Click on the Earth or Moon for a little bit of information about them. This can also be used for links."></asp:Label>
        <br />
        <asp:ImageMap ID="ImageMap1" runat="server"></asp:ImageMap>

        <br />
        <asp:Label ID="Label9" runat="server" Text="Here is a radio button:"></asp:Label>
        <br />
        <br />

        <asp:RadioButton ID="RadioButton1" runat="server" />
        <asp:Label ID="Label10" runat="server" Text="Click this radiobutton, then the button below "></asp:Label>
        <br />
        <asp:Button ID="Button5" runat="server" Text="Radio Button Button" OnClick="Button5_Click" />
        <br />
        <br />
        <asp:Label ID="RadioButtonOutput" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="This is a multiline text box - please type something and click the button below:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Text Box Button" OnClick="Button2_Click" />
        <br />
        <asp:Label ID="TextBoxOutput" runat="server" Text=""></asp:Label>

        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="This is a text box that accepts email addresses - please type an email address and click the button below:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />

        <asp:Button ID="Button6" runat="server" Text="Button" />
        <br />


        <asp:Label ID="Label6" runat="server" Text="Here is a calendar control"></asp:Label>
        <br />
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br />
        <br />

        <h5> List Controls</h5>
        <br />

        <asp:Label ID="Label7" runat="server" Text="Choose your favourite programming language:"></asp:Label>
        <br />
        <br />

        <asp:DropDownList ID="DropDownList1" runat="server">
      
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>VB</asp:ListItem>
        </asp:DropDownList>

        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Text="Confirm Language" />
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Choose your all the ice-creams that you like from the list (and you can pick more than one):"></asp:Label>
        <br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>Vanilla</asp:ListItem>
            <asp:ListItem>Chocolate</asp:ListItem>
            <asp:ListItem>Strawberry</asp:ListItem>
            <asp:ListItem>CherryGarcia</asp:ListItem>
        </asp:CheckBoxList>

        <br />

        <asp:Button ID="Button4" runat="server" Text="Confirm ice-cream" />







    
    
    
    
    </div>
    </form>
</body>
</html>
