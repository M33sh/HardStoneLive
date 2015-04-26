<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EventsGV.aspx.cs" Inherits="HardStone.Pages.EventsGV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <span style="font-size: xx-large"><strong>
<br />
All Event Listings for <a href="http://hardstonelive.azurewebsites.net/">HARD STONE LIVE</a><br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="201px" Width="1049px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="Event" SortExpression="Event">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Event") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Event") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Venue" SortExpression="Venue">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Venue") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Venue") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date" SortExpression="Date">
                <EditItemTemplate>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" SelectedDate='<%# Bind("Date") %>' ShowGridLines="True" VisibleDate='<%# Eval("Date") %>' Width="220px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Date","{0:D}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:TemplateField HeaderText="Category" SortExpression="Category">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Category") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HardStoA2bZzPFS7ConnectionString %>" DeleteCommand="DELETE FROM [Events] WHERE [Id] = @original_Id AND [Event] = @original_Event AND (([Venue] = @original_Venue) OR ([Venue] IS NULL AND @original_Venue IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Time] = @original_Time) OR ([Time] IS NULL AND @original_Time IS NULL)) AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL))" InsertCommand="INSERT INTO [Events] ([Id], [Event], [Venue], [Date], [Time], [Category]) VALUES (@Id, @Event, @Venue, @Date, @Time, @Category)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Events]" UpdateCommand="UPDATE [Events] SET [Event] = @Event, [Venue] = @Venue, [Date] = @Date, [Time] = @Time, [Category] = @Category WHERE [Id] = @original_Id AND [Event] = @original_Event AND (([Venue] = @original_Venue) OR ([Venue] IS NULL AND @original_Venue IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Time] = @original_Time) OR ([Time] IS NULL AND @original_Time IS NULL)) AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Event" Type="String" />
            <asp:Parameter Name="original_Venue" Type="String" />
            <asp:Parameter DbType="Date" Name="original_Date" />
            <asp:Parameter DbType="Time" Name="original_Time" />
            <asp:Parameter Name="original_Category" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="Event" Type="String" />
            <asp:Parameter Name="Venue" Type="String" />
            <asp:Parameter DbType="Date" Name="Date" />
            <asp:Parameter DbType="Time" Name="Time" />
            <asp:Parameter Name="Category" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Event" Type="String" />
            <asp:Parameter Name="Venue" Type="String" />
            <asp:Parameter DbType="Date" Name="Date" />
            <asp:Parameter DbType="Time" Name="Time" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Event" Type="String" />
            <asp:Parameter Name="original_Venue" Type="String" />
            <asp:Parameter DbType="Date" Name="original_Date" />
            <asp:Parameter DbType="Time" Name="original_Time" />
            <asp:Parameter Name="original_Category" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</strong></span>&nbsp;
  
</asp:Content>
