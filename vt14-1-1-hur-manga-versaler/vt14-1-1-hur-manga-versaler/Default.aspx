<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="vt14_1_1_hur_manga_versaler.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Versaler?</title>
    <link href="~/Content/Style.css" rel="stylesheet" type="text/css" />
</head>
<body style="height: 335px">
    <form id="form1" runat="server">
        <div>
           <h1>Hur många versaler?</h1>
            <%-- Textfält --%>
            <asp:TextBox ID="field" runat="server"  TextMode="MultiLine"></asp:TextBox>
        </div>
        <div>
            <%-- Valedering - Funkar inte! Kan inte lägga AssociatedControlID i ett TextBox

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="testField" 
                ErrorMessage="Du måste ange något i fältet.">
            </asp:RequiredFieldValidator>--%>
        </div>
        <div>
            <%-- Resultat --%>    
            <asp:PlaceHolder ID="OutPutPlaceHolder" runat="server" Visible="false">
                <p>
                    <asp:Literal ID="OutPutLiteral" runat="server">Texten innehåller {0} versaler.</asp:Literal>
                </p>
            </asp:PlaceHolder>  
        </div>        
        <div>
            <%-- Buttons --%>
            <asp:Button ID="SendButtom" runat="server" Text="Bestäm antal versaler" OnClick="Button1_Click" />
            <asp:Button ID="ClearButton" runat="server" Text="Rensa" OnClick="ClearButton_Click" Visible="false" />
        </div>
    </form>
</body>
</html>
