<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="prjLab5Donnee.Default" %>
<asp:Content ID="BodyContent" CssClass="body-acceuil" ContentPlaceHolderID="MainContent" runat="server">
     <div class="row">
        <div class="jumbotron job" >
        <h1><img src="images/logocine.png" style="width:200px; height:100px" />   Cineweb</h1>
        <p class="lead">ASP.NET  mi-session "Les grandes exigences"</p>
    </div>
        
        <div class="link">
        <a  href="AfficherFilm" class="type1"><h4><img src="images/show1.png" style="width:45px; height:35px" />   Afficher les films</h4></a>
        </div>
        <br />

        <div class="link">
        <a  href="InsererFilm" class="type1"><h4><img src="images/create.png" style="width:45px; height:35px" />   Inserer un film</h4></a>
        </div>
        <br />

         <div class="link">
        <a  href="SelectionnerFilm" class="type1"><h4><img src="images/selec.png" style="width:45px; height:35px" />   Selectionner un film</h4></a>
        </div>
        <br />

         <div class="link">
        <a  href="meteo" class="type1"><h4><img src="images/weather.png" style="width:45px; height:35px" />   Meteo mondiale</h4></a>
        </div>
        <br />
                  

        
    </div>
</asp:Content>
