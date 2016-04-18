<%@ Page Title="AfficherFilm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AfficherFilm.aspx.cs" Inherits="prjLab5Donnee.AfficherFilm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
    <div class="col-md-1">
</div>
        <div class="col-md-10 place">
                        <div class="table-responsive">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" PageSize="4" DataSourceID="SqlDataSource1" DataKeyNames="Id,IdFilm" ForeColor="#333333" GridLines="Horizontal" AllowSorting="True" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="Grid" AllowPaging="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="image" ControlStyle-Width="20px" ControlStyle-Height="20px" ShowEditButton="True" ShowDeleteButton="True" DeleteImageUrl="images/delete.png" EditImageUrl="images/update.png" UpdateImageUrl="images/ok.png" CancelImageUrl="images/cancel.png"></asp:CommandField>
                    <asp:TemplateField HeaderText="Categorie" SortExpression="Categorifield">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" class="dropdown" runat="server" DataSourceID="SqlCat" DataTextField="Nom" DataValueField="Id" SelectedValue='<%# Bind("Categorifield") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server"  Text='<%# Eval("Nom") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:HyperLinkField DataNavigateUrlFields="Site" DataNavigateUrlFormatString="{0}" DataTextField="Titre" DataTextFormatString="{0}" HeaderText="Titre" SortExpression="Titre"></asp:HyperLinkField>
                    <asp:BoundField DataField="Directeur" HeaderText="Directeur" SortExpression="Directeur" ItemStyle-Width="150px">
<ItemStyle Width="150px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="DateParution" HeaderText="DateParution" DataFormatString="{0: dd MM  yyyy }" SortExpression="DateParution" />
                    <asp:CheckBoxField DataField="EnSalle" HeaderText="EnSalle" SortExpression="EnSalle" />
                    <asp:ImageField DataImageUrlField="Image" DataImageUrlFormatString="~/images/{0}" HeaderText="Image">
                        <ControlStyle Height="100px" Width="70px" />
                    </asp:ImageField>
                    
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" HorizontalAlign="center"/>
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Films] WHERE [IdFilm] = @IdFilm" 
                InsertCommand="INSERT INTO [Films] ([Categorifield], [Titre], [Directeur], [DateParution], [EnSalle], [Site], [image]) VALUES (@Categorifield, @Titre, @Directeur, @DateParution, @EnSalle, @Site, @image)" 
                SelectCommand="SELECT * FROM [Films] JOIN CategorieDeFilm ON Films.Categorifield=CategorieDeFilm.Id" 
                UpdateCommand="UPDATE [Films] SET [Categorifield] = @Categorifield WHERE [IdFilm] = @IdFilm">
                <DeleteParameters>
                    <asp:Parameter Name="IdFilm" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Categorifield" Type="Int32" />
                    <asp:Parameter Name="Titre" Type="String" />
                    <asp:Parameter Name="Directeur" Type="String" />
                    <asp:Parameter Name="DateParution" Type="DateTime" />
                    <asp:Parameter Name="EnSalle" Type="Boolean" />
                    <asp:Parameter Name="Site" Type="String" />
                    <asp:Parameter Name="image" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Categorifield" Type="Int32" />
                    <asp:Parameter Name="IdFilm" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlCat" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [CategorieDeFilm] WHERE [Id] = @Id" 
                SelectCommand="SELECT * FROM [CategorieDeFilm]" >
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Nom" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nom" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </div>
            </div>
    <div class="col-md-1">
</div>
    </div>

        
</asp:Content>
