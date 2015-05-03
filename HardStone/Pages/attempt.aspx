<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="attempt.aspx.cs" Inherits="HardStone.Pages.attempt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:LinkButton ID="lnkAdd" runat="server">Insert New Event</asp:LinkButton>
    
    <asp:Panel ID="ModelPopupPanel" runat="server" CssClass="popup">
    <table>
        <tr>
            <td>
                Roll:
            </td>
            <td>
                <asp:TextBox ID="tb1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Name:
            </td>
            <td>
                <asp:TextBox ID="tb2" runat="server"></asp:TextBox>
            </td>
         </tr>
         <tr>
            <td>
                Email:
            </td>
            <td>
                <asp:TextBox ID="tb3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
            
            </td>
            <td>
                <asp:Button ID="btnInsert" runat="server" Text="Save" OnClick="btnInsert_Click" />&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Panel>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:GridView ID="GridView1" runat="server" HeaderStyle-BackColor="CornflowerBlue" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="White" CellPadding="5" AlternatingRowStyle-BackColor="#66CCFF" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="#66CCFF" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Event" HeaderText="Event" SortExpression="Event" />
                <asp:BoundField DataField="Venue" HeaderText="Venue" SortExpression="Venue" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            </Columns>
            <HeaderStyle BackColor="CornflowerBlue" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HardStoA2bZzPFS7ConnectionString %>" SelectCommand="SELECT * FROM [Events]"></asp:SqlDataSource>
    </ContentTemplate>
    <Triggers><asp:AsyncPostBackTrigger ControlID="btnInsert" EventName="Click" /></Triggers>
</asp:UpdatePanel>

    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="ModelPopupPanel" 
TargetControlID="lnkAdd" BackgroundCssClass="modalBackground" CancelControlID="btnCancel">
</ajaxToolkit:ModalPopupExtender>

</asp:Content>
