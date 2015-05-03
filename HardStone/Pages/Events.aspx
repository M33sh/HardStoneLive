<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="HardStone.Pages.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <asp:GridView ID="GridView1" runat="server" Width = "550px"
AutoGenerateColumns = "false" AlternatingRowStyle-BackColor = "#C2D69B" 
HeaderStyle-BackColor = "green" AllowPaging ="true"

PageSize = "10" >
<Columns>
<asp:BoundField DataField = "CustomerID" HeaderText = "Customer ID" HtmlEncode = "true" />
<asp:BoundField DataField = "ContactName" HeaderText = "Contact Name" HtmlEncode = "true" />
<asp:BoundField DataField = "CompanyName" HeaderText = "Company Name" HtmlEncode = "true"/>
<asp:TemplateField ItemStyle-Width = "30px" HeaderText = "CustomerID">
   <ItemTemplate>
       <asp:LinkButton ID="lnkEdit" runat="server" Text = "Edit" OnClick = "Edit"></asp:LinkButton>
   </ItemTemplate>
</asp:TemplateField>
</Columns>
<AlternatingRowStyle BackColor="#C2D69B" />
</asp:GridView>
<asp:Button ID="btnAdd" runat="server" Text="Add" OnClick = "Add" />
 
<asp:Panel ID="pnlAddEdit" runat="server" CssClass="modalPopup" style = "display:none">
<asp:Label Font-Bold = "true" ID = "Label4" runat = "server" Text = "Customer Details" ></asp:Label>
<br />
<table align = "center">
<tr>
<td>
<asp:Label ID = "Label1" runat = "server" Text = "CustomerId" ></asp:Label>
</td>
<td>
<asp:TextBox ID="txtCustomerID" Width = "40px" MaxLength = "5" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:Label ID = "Label2" runat = "server" Text = "Contact Name" ></asp:Label>
</td>
<td>
<asp:TextBox ID="txtContactName" runat="server"></asp:TextBox>   
</td>
</tr>
<tr>
<td>
<asp:Label ID = "Label3" runat = "server" Text = "Company" ></asp:Label>
</td>
<td>
<asp:TextBox ID="txtCompany" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
<%--<asp:Button ID="btnSave" runat="server" Text="Save" OnClick = "Save" />--%>
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HardStoA2bZzPFS7ConnectionString %>" SelectCommand="SELECT * FROM [Events]"></asp:SqlDataSource>



</asp:Content>
