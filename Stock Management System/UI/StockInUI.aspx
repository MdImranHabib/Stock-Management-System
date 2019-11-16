﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StockInUI.aspx.cs" Inherits="Stock_Management_System.UI.StockInUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2 class="alert bg-primary text-center">Stock In</h2>
        <hr />
        <label id="lblShow" runat="server" class="col-md-offset-4 text-center text-success"></label>
        <br />
        <br />
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="col-md-4 control-label">Company :</label>
                        <asp:DropDownList runat="server" ID="ddlCompany" DataTextField="Name" DataValueField="Id" class="col-md-6 form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlCompany_SelectedIndexChanged"/>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">Item :</label>
                        <asp:DropDownList runat="server" ID="ddlItem" DataTextField="Name" DataValueField="Id" class="col-md-6 form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlItem_SelectedIndexChanged"/>
                    </div> 
                    <div class="form-group">
                        <label class="col-md-4 control-label">Reorder Level :</label>
                        <input id="inputReorderLevel" runat="server" readonly class="col-md-6 form-control" value="0"/>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">Available Quantity :</label>
                        <input id="inputAvailableQuantity" runat="server" readonly class="col-md-6 form-control" />
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">Stock In Quantity :</label>
                        <input id="inputStockInQuantity" runat="server" type="number" class="col-md-6 form-control" />
                    </div>
                    <div class="col-md-offset-4">
                        <asp:Button ID="btnSave" runat="server" BackColor="#009933" ForeColor="White" OnClick="btnSave_Click" Text="Save" BorderColor="#33CC33" Height="28px" Width="66px" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
