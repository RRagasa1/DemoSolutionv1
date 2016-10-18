<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FirstSample.aspx.cs" Inherits="Queries_FirstSample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <h1>First Sample</h1>
    <h3>EntityFramework Data Access</h3>
    <asp:GridView ID="EntityFrameworkList" runat="server" AutoGenerateColumns="False" DataSourceID="EntityFrameworkODS" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="ArtistID" HeaderText="ArtistID" SortExpression="ArtistID"></asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="LinqToEntityODS" runat="server"
        OldValuesParameterFormatString="original_{0}"
        SelectMethod="ArtistAlbums_Get"
        TypeName="ChinookSystem.BLL.ArtistController">
    </asp:ObjectDataSource>
    <h3>Linq to Entity Data Access</h3>
    <asp:Label ID="ReleaseYearLabel" runat="server" Text="Enter a release year of interest"></asp:Label>
    <asp:TextBox ID="ReleaseYear" runat="server"></asp:TextBox>
    <asp:Button ID="Fetch" runat="server" Text="Fetch" />
    <asp:GridView ID="LinqToEntityList" runat="server" AutoGenerateColumns="False" DataSourceID="LinqToEntityODS" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="EntityFrameworkODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Artist_ListAll" TypeName="ChinookSystem.BLL.ArtistController"></asp:ObjectDataSource>

</asp:Content>


