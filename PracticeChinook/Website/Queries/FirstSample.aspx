﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FirstSample.aspx.cs" Inherits="Queries_FirstSample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<h1> First Sample</h1>
    <h3>EntityFramework Data Access</h3>
    <asp:GridView ID="EntityFrameworkList" runat="server" AutoGenerateColumns="False" DataSourceID="EntityFrameworkODS" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="ArtistID" HeaderText="ArtistID" SortExpression="ArtistID"></asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="EntityFrameworkODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Artist_ListAll" TypeName="ChinookSystem.BLL.ArtistController"></asp:ObjectDataSource>
</asp:Content>

