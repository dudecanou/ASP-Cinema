<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="meteo.aspx.cs" Inherits="prjLab5Donnee.meteo" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4 place">
            <asp:DropDownList ID="ddlPays" class="form-control ddl-pos"  runat="server" OnSelectedIndexChanged="ddlPays_SelectedIndexChanged" AutoPostBack="True" >
            </asp:DropDownList>
            <br />
            <asp:DropDownList ID="ddlVilles" class="form-control ddl-pos"  runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlVilles_SelectedIndexChanged">
            </asp:DropDownList>
        </div>

        <div class="col-sm-4"></div>
        <div class="space"></div>
                <div class="col-sm-2 "></div>
                <div class="col-sm-1 "></div>
                <div class="col-sm-2 box zoom">
                    <div class="icon">
                        <img src="images/temperature.png" style="width:50px; height:50px"/>
                        <div class="labelplace">
                            <asp:Label ID="lblTemperatureMax" runat="server" Text="" Font-Bold="True" Font-Size="Large"></asp:Label>
                            <br />
                            <asp:Label ID="lblTemperatureMin" runat="server" Text="" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </div>
                    </div>
                </div>

                <div class="col-sm-1 "></div>
                <!--<div class="col-sm-2 box zoom">
                    <div class="icon">
                        <img src="images/wind.png" style="width:50px; height:50px"/>
                        <div class="labelplace">
                            <asp:Label ID="lblDirection" runat="server" Text="" Font-Bold="True" Font-Size="Large"></asp:Label>
                            <br />
                            <asp:Label ID="lblVitesse" runat="server" Text="" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </div>
                    </div>
                </div>-->

                <div class="col-sm-1 "></div>
                <div class="col-sm-2 box zoom">
                    <div class="icon">
                        <img src="images/precipitation.png" style="width:50px; height:50px"/>
                        <div class="labelplace">
                            <asp:Label ID="lblHumidite" runat="server" Text="" Font-Bold="True" Font-Size="Large"></asp:Label>
                            <br />
                            <asp:Label ID="lblPrecipitation" runat="server" Text="" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </div>
                    </div>
                </div>

                <div class="col-sm-1 "></div>
                <div class="col-sm-2 "></div>
    </div>
</asp:Content>
