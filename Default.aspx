<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1> first ASP.NET Web Forms page</h1>
        <asp:Label ID="Label1" runat="server" Text="Please type in your name: "></asp:Label>
        <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
        <asp:Button ID="ButtonName" runat="server" Text="click me" OnClick="ButtonName_Click" />
        <br />
        <br />

        <asp:Label ID="LabelNameOutput" runat="server" Text=""></asp:Label>
        <br />
        <br />

        <asp:CheckBox ID="CheckBox1" runat="server" />
       
        <br />

        <asp:Button ID="ButtonCheckBox" runat="server" Text="Check box button" OnClick="ButtonCheckBox_Click" />

        <br />

        <asp:Label ID="LabelCheckBoxOutput" runat="server" Text=""></asp:Label>

        <br />

        <asp:RadioButton ID="RadioButton1" runat="server" />
        <br />

        <asp:Button ID="ButtonRadioButton" runat="server" Text="Button" OnClick="ButtonRadioButton_Click" />


        <br />
        <asp:Label ID="LabelRadioButtonOutput" runat="server" Text=""></asp:Label>


    </div>
    </form>
</body>
</html>
