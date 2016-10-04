<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EmployeeNameList.aspx.cs" Inherits="Queries_EmployeeNameList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <h1>Employee List order by Lastname</h1>
      <%--Dropdown listdisplay employess, order by last name, then first name
return the EmployeeID--%> 

    <asp:Label ID="Label1" runat="server" Text="Select a Employee"></asp:Label> &nbsp;&nbsp
    <asp:Button ID="Search" runat="server" Text="Search" />
    <br />
    
    <asp:DropDownList ID="EmployeeList" runat="server" DataSourceID="EmployeeNameList" DataTextField="EmployeeId" DataValueField="EmployeeId">
    </asp:DropDownList>

    <asp:ObjectDataSource ID="EmployeeNameList" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="EmployeeNameList_Get" TypeName="ChinookSystem.BLL.EmployeeController"></asp:ObjectDataSource>
</asp:Content>

