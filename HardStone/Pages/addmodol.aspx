<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addmodol.aspx.cs" Inherits="HardStone.Pages.addmodol" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<asp:GridView ID="GridView1" runat="server" Width = "550px"
AutoGenerateColumns = "false" AlternatingRowStyle-BackColor = "#C2D69B" 
HeaderStyle-BackColor = "green" AllowPaging ="true"
OnPageIndexChanging = "OnPaging"
PageSize = "10" >
<Columns>
<asp:BoundField DataField = "ID" HeaderText = "ID" HtmlEncode = "true" />
<asp:BoundField DataField = "Event" HeaderText = "Event" HtmlEncode = "true" />
<asp:BoundField DataField = "Venue" HeaderText = "Venue" HtmlEncode = "true" />
<asp:BoundField DataField = "Date" HeaderText = "Date" HtmlEncode = "true"/>
<asp:BoundField DataField = "Time" HeaderText = "Time" HtmlEncode = "true" />
<asp:BoundField DataField = "Category" HeaderText = "Category" HtmlEncode = "true"/>
<asp:TemplateField ItemStyle-Width = "30px" HeaderText = "EventID">
   <ItemTemplate>
       <asp:LinkButton ID="lnkEdit" runat="server" Text = "Edit" OnClick = "Edit"></asp:LinkButton>
   </ItemTemplate>
</asp:TemplateField>
</Columns>
<AlternatingRowStyle BackColor="#C2D69B" />
</asp:GridView>

 <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick = "Add" />
 
<asp:Panel ID="pnlAddEdit" runat="server" CssClass="modalPopup" style = "display:none">
<asp:Label Font-Bold = "true" ID = "Label4" runat = "server" Text = "Event Details" ></asp:Label>
<br />
<table align = "center">
<tr>
<td>
<asp:Label ID = "Label1" runat = "server" Text = "ID" ></asp:Label>
</td>
<td>
<asp:TextBox ID="txtCustomerID" Width = "40px" MaxLength = "5" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:Label ID = "Label2" runat = "server" Text = "Event" ></asp:Label>
</td>
<td>
<asp:TextBox ID="txtContactName" runat="server"></asp:TextBox>   
</td>
</tr>
<tr>
<td>
<asp:Label ID = "Label3" runat = "server" Text = "Venue" ></asp:Label>
</td>
<td>
<asp:TextBox ID="txtCompany" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:Button ID="btnSave" runat="server" Text="Save" OnClick = "Save" />
</td>
<td>
<asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClientClick = "return Hidepopup()"/>
</td>
</tr>
</table>
</asp:Panel>
<asp:LinkButton ID="lnkFake" runat="server"></asp:LinkButton>
<ajaxToolkit:ModalPopupExtender ID="popup" runat="server" DropShadow="false"
PopupControlID="pnlAddEdit" TargetControlID = "lnkFake"
BackgroundCssClass="modalBackground">
</ajaxToolkit:ModalPopupExtender>
</ContentTemplate>
<Triggers>
<asp:AsyncPostBackTrigger ControlID = "GridView1" />
<asp:AsyncPostBackTrigger ControlID = "btnSave" />
</Triggers>
</asp:UpdatePanel>

</asp:Content>
