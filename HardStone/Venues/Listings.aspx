<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Listings.aspx.cs" Inherits="HardStone.Venues.Listings" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">   
    <div style="margin-left:10%">
     <h1>Venues Across the East Coast</h1> 
        <asp:Image ID="EC" ImageUrl="eastcoast.jpg" runat="server" ImageAlign="Right" />  
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>    
    <ajaxtoolkit:accordion ID="Accordion1" runat="server" >        
        <Panes>
        <ajaxToolkit:AccordionPane ID="AccordionPane2" runat="server" >
            <Header><h3>Maine</h3></Header>
            <Content> <ul>
                        <li>Agusta</li>
                        <li>Eastport</li>
                        <li>Brunswick</li>
                        <li>Presque Isle</li>
                      </ul> 
            <asp:Button ID="btn1" runat="server" Text="Why Maine?" OnClick="btn1_Click"/>
            </Content>
        </ajaxToolkit:AccordionPane>

        <ajaxToolkit:AccordionPane ID="AccordionPane3" runat="server">
            <Header><h3>New Hampshire</h3></Header>
            <Content> <ul>
                        <li>Nashua</li>
                        <li>Concord</li>
                        <li>Dover</li>
                        <li>Rochester</li>
                        <li>Franklin</li>
                      </ul>
                <asp:Button ID="btn2" runat="server" Text="Why New Hampshire?" OnClick="btn2_Click" />
                
            </Content>
        </ajaxToolkit:AccordionPane>

        <ajaxToolkit:AccordionPane ID="AccordionPane4" runat="server" >
            <Header><h3>Pennsylvania</h3></Header>
            <Content> <ul>
                        <li>Scranton</li>
                        <li>Pittsburgh</li>
                        <li>Philadelphia</li>
                        <li>Harrisburg</li>
                      </ul> 
            <asp:Button ID="btn3" runat="server" Text="Why Pennsylvania?" OnClick="btn3_Click" />
            </Content>
        </ajaxToolkit:AccordionPane>

        <ajaxToolkit:AccordionPane ID="AccordionPane5" runat="server">
            <Header><h3>New York</h3></Header>
            <Content> <ul>
                        <li>Buffalo</li>
                        <li>Albany</li>
                        <li>New York</li>
                        <li>Syracuse</li>
                        <li>Utica </li>
                      </ul>
                <asp:Button ID="btn4" runat="server" Text="Why New York?" OnClick="btn4_Click" />
            </Content>             
        </ajaxToolkit:AccordionPane>

        <ajaxToolkit:AccordionPane ID="AccordionPane6" runat="server" >
            <Header><h3>Virginia</h3></Header>
            <Content> <ul>
                        <li>Virginia Beach</li>
                        <li>Richmond</li>
                        <li>Roanoke</li>
                      </ul> 
            <asp:Button ID="btn5" runat="server" Text="Why Virginia?" OnClick="btn5_Click" />
            </Content>
        </ajaxToolkit:AccordionPane>

        <ajaxToolkit:AccordionPane ID="AccordionPane7" runat="server">
            <Header><h3>North Carolina</h3></Header>
            <Content> <ul>
                        <li>Charlotte</li>
                        <li>Raleigh</li>
                        <li>Greensboro</li>
                      </ul>
                <asp:Button ID="btn6" runat="server" Text="Why North Carolina?" OnClick="btn6_Click" />
            </Content>
        </ajaxToolkit:AccordionPane>

        <ajaxToolkit:AccordionPane ID="AccordionPane8" runat="server" >
            <Header><h3>Georgia</h3></Header>
            <Content> <ul>
                        <li>Savannah</li>
                        <li>Atlanta</li>                        
                      </ul> 
            <asp:Button ID="btn7" runat="server" Text="Why Georgia?" OnClick="btn7_Click" />
            </Content>
        </ajaxToolkit:AccordionPane>

        <ajaxToolkit:AccordionPane ID="AccordionPane9" runat="server">
            <Header><h3>Florida</h3></Header>
            <Content> <ul>
                        <li>Miami</li>
                        <li>Orlando</li>
                        <li>Jacksonville</li>
                        <li>Tallahassee</li>
                      </ul>
                <asp:Button ID="btn8" runat="server" Text="Why Florida?" OnClick="btn8_Click" />
            </Content>             
        </ajaxToolkit:AccordionPane>            
                
        </Panes>
    </ajaxtoolkit:accordion>
        <asp:Button ID="btnOutside" runat="server" Text="Back to Home" OnClick="btnOutside_Click" />      
     </div>
   
</asp:Content>

