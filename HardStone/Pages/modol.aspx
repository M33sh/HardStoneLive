<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="modol.aspx.cs" Inherits="HardStone.Pages.modol" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:SqlDataSource ID="sqlDSProducts" runat="server"
                ConnectionString="<%$ ConnectionStrings:HardStoA2bZzPFS7ConnectionString %>"
            SelectCommand="SELECT * FROM [Events]">      
        </asp:SqlDataSource>
        <asp:gridview runat="server" ID="gvProducts" DataKeyNames="Id"
            AutoGenerateColumns="False" DataSourceID="sqlDSProducts" CssClass="mGrid">
        <RowStyle BackColor="#EFF3FB" />       
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lbkSelect" runat="server" Text="Select" OnClick="lbkSelect_Click" />
            </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id"/> 
            <asp:BoundField DataField="Event" HeaderText="Event" SortExpression="Event"/> 
            <asp:BoundField DataField="Venue" HeaderText="Venue" SortExpression="Venue"/> 
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date"/>
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
        </Columns>
    </asp:gridview>   
    <asp:Button ID="btnShowPopup" style="display:none" runat="server"/>
    <ajaxToolkit:ModalPopupExtender ID="ctlModalPopupExtender" runat="server" TargetControlID="btnShowPopup"
            PopupControlID="pnlpopup"
            CancelControlID="imgOK" BackgroundCssClass="modalBackground">
    </ajaxToolkit:ModalPopupExtender>
 
    <asp:Panel ID="pnlpopup" runat="server" Width="400px" >
    <table class="tableClass" width="600px">
        <tr>
            <th valign="middle" colspan="2" align="center" bgcolor="#99CCFF"  style="font-weight:bold;font-size:larger">Product Details           
            <asp:ImageButton ID="imgOK" ImageUrl="~/Close2.jpg" Height="25" Width="25" runat="server" ImageAlign="Right" />
            </th>          
        </tr>
        <tr>
            <td class="thClass">Event ID:</td>
            <td class="tdClass"><asp:Label ID="lblID" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td class="thClass">Event Name:</td>
            <td class="tdClass"><asp:Label ID="lblProductName" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td class="thClass">Venue:</td>
            <td class="tdClass"><asp:Label ID="lblProductNumber" runat="server"/></td>
        </tr>      
        <tr>
            <td class="thClass">Date & Time:</td>
            <td class="tdClass"><asp:Label ID="lblPrice" runat="server"/></td>
        </tr>       
    </table>
    </asp:Panel>
</div>


</asp:Content>
