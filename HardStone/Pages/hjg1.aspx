<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="hjg1.aspx.cs" Inherits="HardStone.Pages.hjg1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   
    <div style="margin-left:10%">
        <asp:Label ID="Label1" runat="server" Text="Button Response"></asp:Label>    
    <ajaxtoolkit:accordion ID="Accordion1" runat="server" >
        <Panes>
        <ajaxToolkit:AccordionPane ID="AccordionPane2" runat="server" >
            <Header><h1>Accordian Pane 1</h1></Header>
            <Content>This<br/>is<br/>the<br/>contents<br/>of<br/>Pane<br/>1 <br/>
                <asp:Button ID="btn1" runat="server" Text="Button Panel 1" OnClick="btn1_Click" />
            </Content>
        </ajaxToolkit:AccordionPane>
        <ajaxToolkit:AccordionPane ID="AccordionPane3" runat="server">
            <Header><h1>Accordian Pane 2</h1></Header>
            <Content>This<br/>is<br/>the<br/>contents<br/>of<br/>Pane<br/>2
                <asp:Button ID="btn2" runat="server" Text="Button Panel 2" OnClick="btn2_Click" />
            </Content>
        </ajaxToolkit:AccordionPane>            
        </Panes>
    </ajaxtoolkit:accordion>
        <asp:Button ID="btnOutside" runat="server" Text="Outside Panel" OnClick="btnOutside_Click" />
     </div>
</asp:Content>
