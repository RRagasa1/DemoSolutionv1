<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EmployeeNameList.aspx.cs" Inherits="Queries_EmployeeNameList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <h1>Employee List order by Lastname</h1>
      <%--Dropdown listdisplay employess, order by last name, then first name
return the EmployeeID--%> 
    <asp:ObjectDataSource ID="EmployeeNameList" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="EmployeeNameList_Get" TypeName="ChinookSystem.BLL.EmployeeController"></asp:ObjectDataSource>
     <asp:DropDownList ID="EmployeeList" runat="server" DataSourceID="EmployeeNameList" DataTextField="Name" DataValueField="Name">
    </asp:DropDownList>

</asp:Content>

