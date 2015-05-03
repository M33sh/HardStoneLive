<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EventsGV.aspx.cs" Inherits="HardStone.Pages.EventsGV" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <span style="font-size: xx-large"><strong>
        <br />
        All Event Listings for <a href="http://hardstonelive.azurewebsites.net/">Hard Stone LIVE</a><br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="False" AllowSorting="False" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" ForeColor="Black" GridLines="Horizontal" Height="201px" Width="1049px">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbkSelect" runat="server" Text="Select" OnClick="lbkSelect_Click" BackColor="Black" />
                    </ItemTemplate>
                    <ControlStyle Width="75px" />
                    <ItemStyle BackColor="Black" />
                </asp:TemplateField>
                <asp:TemplateField ItemStyle-Width="30px" HeaderText="">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit" OnClick="Edit" BackColor="Black"></asp:LinkButton>
                        <enso:ConfirmBox runat="server" Title="Confirm Event Change" Message="Are you sure you want to edit this event?" TargetControlId="lnkEdit" />
                    </ItemTemplate>
                    <ControlStyle Width="75px" />

                    <ItemStyle Width="30px"></ItemStyle>
                </asp:TemplateField>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" Visible="False" />
                <asp:BoundField DataField="Event" HeaderText="Event" SortExpression="Event" />
                <asp:BoundField DataField="Venue" HeaderText="Venue" SortExpression="Venue" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:d}" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            </Columns>

            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <br />
        <asp:Button ID="btnAdd" runat="server" Text="Add New Event" OnClick="Add" ForeColor="Black" />

        <asp:Panel ID="pnlAddEdit" runat="server" Width="400px">
            <table class="tableClass" width="500px">
                <tr>
                    <th valign="middle" colspan="2" align="center" bgcolor="#99CCFF" style="font-weight: bold; font-size: larger"><span style="color: #000000">Add / Edit Event Listing</span>
                        <asp:ImageButton ID="ImageButton1" ImageUrl="close.jpg" Height="25" Width="25" runat="server" ImageAlign="Right" />
                    </th>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtID" Width="40px" MaxLength="5" runat="server" BackColor="Red"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Event"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEvent" runat="server" BackColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Venue"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtVenue" runat="server" BackColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="height: 28px">
                        <asp:Label ID="Label4" runat="server" Text="Time"></asp:Label>
                    </td>
                    <td style="height: 28px">
                        <asp:TextBox ID="txtTime" Width="40px" MaxLength="5" runat="server" BackColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextDate" runat="server" BackColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Category"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCategory" runat="server" BackColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="Save" ForeColor="Black" />
                    </td>
                    <td>
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClientClick="return Hidepopup()" ForeColor="Black" />
                        <enso:ConfirmBox runat="server" Title="Discard Changes" Message="Are you sure you want to cancel? Changes will NOT be saved." TargetControlId="btnCancel" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:LinkButton ID="lnkFake" runat="server"></asp:LinkButton>

        <ajaxToolkit:ModalPopupExtender ID="popup" runat="server" DropShadow="false"
            PopupControlID="pnlAddEdit" TargetControlID="lnkFake"
            BackgroundCssClass="modalBackground">
        </ajaxToolkit:ModalPopupExtender>

        <asp:Button ID="btnShowPopup" Style="display: none" runat="server" />
        <ajaxToolkit:ModalPopupExtender ID="ctlModalPopupExtender" runat="server" TargetControlID="btnShowPopup"
            PopupControlID="pnlpopup"
            CancelControlID="imgOK" BackgroundCssClass="modalBackground">
        </ajaxToolkit:ModalPopupExtender>

        <asp:Panel ID="pnlpopup" runat="server" Width="400px">
            <table class="tableClass" width="500px">
                <tr>
                    <th valign="middle" colspan="2" align="center" bgcolor="#99CCFF" style="font-weight: bold; font-size: larger">Event Details           
            <asp:ImageButton ID="imgOK" ImageUrl="close.jpg" Height="25" Width="25" runat="server" ImageAlign="Right" />
                    </th>
                </tr>
                <tr>
                    <td class="thClass">Event ID:</td>
                    <td class="tdClass">
                        <asp:Label ID="lb1" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="thClass">Event Name:</td>
                    <td class="tdClass">
                        <asp:Label ID="lb2" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="thClass">Venue:</td>
                    <td class="tdClass">
                        <asp:Label ID="lb3" runat="server" /></td>
                </tr>
                <tr>
                    <td class="thClass">Date:</td>
                    <td class="tdClass">
                        <asp:Label ID="lb4" runat="server" /></td>
                </tr>
                <tr>
                    <td class="thClass">Time:</td>
                    <td class="tdClass">
                        <asp:Label ID="lb5" runat="server" /></td>
                </tr>
                <tr>
                    <td class="thClass">Category:</td>
                    <td class="tdClass">
                        <asp:Label ID="lb6" runat="server" /></td>
                </tr>


            </table>
        </asp:Panel>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HardStoA2bZzPFS7ConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Event], [Venue], [Date], [Time], [Category] FROM [Events]"></asp:SqlDataSource>
        <br />
    </strong></span>&nbsp;
  
</asp:Content>
