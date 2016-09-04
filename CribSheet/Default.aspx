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
        <asp:Button ID="ButtonCheckBox" runat="server" Text="Check Box Button" OnClick="ButtonCheckBox_Click" />

        <br />
        <br />
        <asp:Label ID="CheckBoxLabel" runat="server" Text=""></asp:Label><%--we are giving meaningful name and putting Label as suffix in the ID name.--%>

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
        <asp:Button ID="ButtonRadioButton" runat="server" Text="Radio Button Button" OnClick="ButtonRadioButton_Click" />
        <%--we are giving meaningful name and putting Button as prefix in the ID--%> 

        <br />
        <br />
        <asp:Label ID="RadioButtonLabel" runat="server" Text=""></asp:Label> 
        <%--we are giving meaningful name and putting Label as suffix in the ID name.--%>
       
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="This is a multiline text box - please type something and click the button below:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBoxMultiLine" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="ButtonTextBoxMultiLine" runat="server" Text="Text Box Button" OnClick="ButtonTextBoxMultiLine_Click" />
        <br />
        <asp:Label ID="TextBoxMultiLineLabel" runat="server" Text=""></asp:Label>


        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="This is a text box that accepts email addresses - please type an email address and click the button below:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
        <br />
        <br />

       <%-- <asp:Button ID="ButtonTextBoxEmail" runat="server" Text="Text Box Button" OnClick="ButtonTextBoxEmail_Click" />--%>
        <br />
        <asp:Label ID="TextBoxEmailLabel" runat="server" Text=""></asp:Label>

        <br />
        <br />

        <asp:Label ID="Label6" runat="server" Text="Here is a calendar control"></asp:Label>
        <br />
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        <br />
        <asp:Label ID="CalendarLabel" runat="server" Text=""></asp:Label>
        <br />

        <h5> List Controls</h5>
        <br />

        <asp:Label ID="Label7" runat="server" Text="Choose your favourite programming language:"></asp:Label>
        <br />
        <br />

        <asp:DropDownList ID="FavouriteLanguage" runat="server">
      
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>VB</asp:ListItem>
        </asp:DropDownList>

        <br />
        <br />
        <asp:Button ID="ButtonConfirmLanguage" runat="server" Text="Confirm Language" OnClick="ButtonConfirmLanguage_Click" />
        <br />
        <br />
        <asp:Label ID="FavouriteLanguageLabel" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Choose your all the ice-creams that you like from the list (and you can pick more than one):"></asp:Label>
        <br />
        <asp:CheckBoxList ID="FavouriteIceCream" runat="server" AutoPostBack="True">
            <asp:ListItem>Vanilla</asp:ListItem>
            <asp:ListItem>Chocolate</asp:ListItem>
            <asp:ListItem>Strawberry</asp:ListItem>
            <asp:ListItem>CherryGarcia</asp:ListItem>
        </asp:CheckBoxList>

        <br />

        <asp:Button ID="ButtonIceCream" runat="server" Text="Confirm ice-cream" OnClick="ButtonIceCream_Click" />
        <br />
        <br />
        <asp:Label ID="FavouriteIceCreamLabel" runat="server" Text=""></asp:Label>
       <%-- for displaying the output--%>
        <br />
        Here is a radio button list. Which kind of music do you prefer:

                   <asp:RadioButtonList ID="RadioButtonListMusic" runat="server">
                    <asp:ListItem Value="Jazz">Jazz</asp:ListItem>
                    <asp:ListItem Value="Rock">Rock</asp:ListItem>
                    <asp:ListItem Value="HipHop">Hip Hop</asp:ListItem>
                    <asp:ListItem Value="Blues">Blues</asp:ListItem>
                   </asp:RadioButtonList>

        <asp:Button ID="ButtonRadioButtonListMusic" runat="server" Text="Button" OnClick="ButtonRadioButtonListMusic_Click" />
        <br />
        <asp:Label ID="RadioButtonListMusicLabel" runat="server" Text=""></asp:Label>
        <br />
        
        From the list box, choose your preferred candidate for Chelsea manager. If you think they should do a jobshare, you can pick more than one:
        <br />
        <asp:ListBox ID="ChelseaManagerListBox" runat="server" TabIndex="0" AutoPostBack="True" SelectionMode="Multiple">
            <asp:ListItem>Pep Guardiola</asp:ListItem>
            <asp:ListItem>Diego Simeone</asp:ListItem>
            <asp:ListItem>Antonio Conte</asp:ListItem>
            <asp:ListItem>John Terry</asp:ListItem>
        </asp:ListBox>
        <br />
        <asp:Button ID="ButtonChelseaManager" runat="server" Text="Choose the next Chelsea manager" OnClick="ButtonChelseaManager_Click" />
        <br />
        <asp:Label ID="ChelseaManagerLabel" runat="server" Text=""></asp:Label>


    
    
    
    
    </div>
    </form>
</body>
</html>
