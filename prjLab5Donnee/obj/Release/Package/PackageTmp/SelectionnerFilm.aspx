<%@ Page Title="SelectionnerFilm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SelectionnerFilm.aspx.cs" Inherits="prjLab5Donnee.SelectionnerFilm" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-5 place">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" SelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="SqlTitre" DataKeyNames="Titre,Directeur,DateParution,image" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="20" EditRowStyle-BorderStyle="None" BorderStyle="None" GridLines="None">
                <AlternatingRowStyle BorderStyle="None" />
                <Columns>
                    <asp:CommandField ButtonType="image" ControlStyle-Width="25px" ControlStyle-Height="25px" ShowSelectButton="True" SelectImageUrl="images/eye.png">
<ControlStyle Height="25px" Width="25px"></ControlStyle>
                    </asp:CommandField>
                    <asp:BoundField DataField="Titre"  SortExpression="Titre">
                        <ControlStyle Font-Bold="True" Font-Names="Arial" Font-Size="Larger"></ControlStyle>
                        <ItemStyle Font-Bold="True" Font-Names="Arial" Font-Size="Larger"></ItemStyle>
                    </asp:BoundField>
                </Columns>

<EditRowStyle BorderStyle="None"></EditRowStyle>

                <EmptyDataRowStyle Font-Bold="True" Font-Names="Arial" BorderStyle="None" />
                <FooterStyle BorderStyle="None" />
                <HeaderStyle BorderStyle="None" />
                <PagerStyle BorderStyle="None" />
                <RowStyle BorderStyle="None" />
                <SelectedRowStyle BorderStyle="None" />
                <SortedAscendingCellStyle BorderStyle="None" />
                <SortedAscendingHeaderStyle BorderStyle="None" />
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlTitre" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Films]"></asp:SqlDataSource>
        </div>

        <div class="col-md-1">
        </div>

        <div class="col-md-6 place">
            <div class="labelaffiche"><asp:Label ID="lblTitre" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" ForeColor="#9900FF"></asp:Label></div>

            <div>
                <asp:GridView  CssClass="image" ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlAffiche" BorderStyle="None" GridLines="None">
                    <Columns>
                        <asp:ImageField DataAlternateTextField="image" DataAlternateTextFormatString="images\{0}" DataImageUrlField="image" DataImageUrlFormatString="images\{0}">
                            <ControlStyle Height="450px" Width="310px"></ControlStyle>
                        </asp:ImageField>

                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource runat="server" ID="SqlAffiche" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [image] FROM [Films] WHERE ([Titre] = @Titre)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="Titre" Type="String"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div><br />
            <div class="labelaffiche"><asp:Label ID="lblDirecteur" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Larger"></asp:Label></div>

            <div class="labelaffiche"><asp:Label ID="lblDate" runat="server"  Font-Bold="True" Font-Names="Arial" Font-Size="Larger"></asp:Label></div> 
        </div>

        
    </div>

</asp:Content>
