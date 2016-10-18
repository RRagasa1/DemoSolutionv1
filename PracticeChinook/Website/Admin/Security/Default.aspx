<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Security_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row jumbotron">
        <h1>Site Administration</h1>
    </div>

    <div class ="row">
        <div class="col-md-12">
            <!--navigation tabs-->
            <ul class="nav nav-tabs">
                <li class="active"><a href="#users" data-toggle="tab">Users</a></li>
                <li><a href="#roles" data-toggle="tab">Roles</a></li>
                <li><a href="#unregistered" data-toggle="tab">Unregistered</a></li>
            </ul>
            <!--create the needed controls for the designated tab-->
            <div class="tab-content">
                <!--user tab-->
                <div class="tab-pane fade in active" id="users">
                    <h2>User Crud</h2>
                </div>
                <div class="tab-pane" id="roles">
                    <h2>Role Crud</h2>
                </div>
                <div class="tab-pane" id="unregistered">
                    <h2>Unregistered Crud</h2>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

