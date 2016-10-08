<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="GridViewVSListView.aspx.cs" Inherits="Samples_GridViewVSListView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>GridView POCO</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="MenuCategoryFoodItemsODS" AllowPaging="True">

        <Columns>
            <asp:BoundField DataField="ItemID" HeaderText="ItemID" SortExpression="ItemID"></asp:BoundField>
            <asp:BoundField DataField="Description" HeaderText="FoodDescription" SortExpression="FoodDescription"></asp:BoundField>
            <asp:BoundField DataField="CurrentPrice" HeaderText="CurrentPrice" SortExpression="CurrentPrice"></asp:BoundField>
            <asp:BoundField DataField="ItemsServed" HeaderText="ItemsServed" SortExpression="ItemsServed"></asp:BoundField>
            <asp:BoundField DataField="MenuCategoryDescription" HeaderText="MenuCategoryDescription" SortExpression="MenuCategoryDescription"></asp:BoundField>
        </Columns>
    </asp:GridView>

    <h1>Listview POCO</h1>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="MenuCategoryFoodItemsODS">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF; color: #284775;">
                <td>
                    <asp:Label Text='<%# Eval("ItemID") %>' runat="server" ID="ItemIDLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("CurrentPrice") %>' runat="server" ID="CurrentPriceLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("ItemsServed") %>' runat="server" ID="ItemsServedLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("MenuCategoryDescription") %>' runat="server" ID="MenuCategoryDescriptionLabel" /></td>
            </tr>
        </AlternatingItemTemplate>
        <%--<EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("ItemID") %>' runat="server" ID="ItemIDTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("CurrentPrice") %>' runat="server" ID="CurrentPriceTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("ItemsServed") %>' runat="server" ID="ItemsServedTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("MenuCategoryDescription") %>' runat="server" ID="MenuCategoryDescriptionTextBox" /></td>
            </tr>
        </EditItemTemplate>--%>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <%--<InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("ItemID") %>' runat="server" ID="ItemIDTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("CurrentPrice") %>' runat="server" ID="CurrentPriceTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("ItemsServed") %>' runat="server" ID="ItemsServedTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("MenuCategoryDescription") %>' runat="server" ID="MenuCategoryDescriptionTextBox" /></td>
            </tr>
        </InsertItemTemplate>--%>
        <ItemTemplate>
            <tr style="background-color: #E0FFFF; color: #333333;">
                <td>
                    <asp:Label Text='<%# Eval("ItemID") %>' runat="server" ID="ItemIDLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("CurrentPrice") %>' runat="server" ID="CurrentPriceLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("ItemsServed") %>' runat="server" ID="ItemsServedLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("MenuCategoryDescription") %>' runat="server" ID="MenuCategoryDescriptionLabel" /></td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                            <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                <th runat="server">ID</th>
                                <th runat="server">Item Served</th>
                                <th runat="server">$</th>
                                <th runat="server">Servings</th>
                                <th runat="server">Category</th>
                            </tr>
                            <tr runat="server" id="itemPlaceholder"></tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
                        <asp:DataPager runat="server" ID="DataPager1">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
      <%--  <SelectedItemTemplate>
            <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                <td>
                    <asp:Label Text='<%# Eval("ItemID") %>' runat="server" ID="ItemIDLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("CurrentPrice") %>' runat="server" ID="CurrentPriceLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("ItemsServed") %>' runat="server" ID="ItemsServedLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("MenuCategoryDescription") %>' runat="server" ID="MenuCategoryDescriptionLabel" /></td>
            </tr>
        </SelectedItemTemplate>--%>
    </asp:ListView>


    <asp:ObjectDataSource ID="MenuCategoryFoodItemsODS" runat="server" 
        OldValuesParameterFormatString="original_{0}" 
        SelectMethod="MenuCategoryFoodItemsPOCO_Get" 
        TypeName="eRestaurantSystem.BLL.ItemsController">

</asp:ObjectDataSource>


</asp:Content>
