<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HardStone._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 class="text-center">
            <asp:Image ID="Image1" ImageUrl="HardStoneLogo.png" runat="server" />
        &nbsp;<span style="font-size: 60px">Experience the Music</span></h1>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Upcoming Events</h2>
            <p>
               <%-- ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.--%>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Calender &raquo;</a><ajaxToolkit:Seadragon ID="Seadragon1" SourceUrl="nin/dzc_output.xml" Width="1165px" Height="500px" runat="server">
            </ajaxToolkit:Seadragon>
            </p>
            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2 class="text-center">Venues</h2>
            <p class="text-center">
                <%--NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.--%>
            </p>
            <p class="text-center">
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Map &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2 class="text-right">Members</h2>
            <p class="text-right">
                <%--You can easily find a web hosting company that offers the right mix of features and price for your applications.--%>
            </p>
            <p class="text-right">
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Manage &raquo;</a>
            </p>
            <p>
                &nbsp;</p>
            <p>
            </p>
            
        </div>
    </div>

</asp:Content>
