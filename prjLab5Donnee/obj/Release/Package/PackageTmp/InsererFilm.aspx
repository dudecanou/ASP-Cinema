<%@ Page Title="Inserer Films" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsererFilm.aspx.cs" Inherits="prjLab5Donnee.InsererFilm" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
                <div class="col-md-3">
</div>
        <div class="col-md-6 place">
            <div class="table-responsive">
                <asp:DetailsView ID="DetailsView1" CssClass="detailView" runat="server" AutoGenerateRows="False" DataKeyNames="IdFilm" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserting="DetailsView1_ItemInserting" FooterStyle-BackColor="#CCCCCC" GridLines="None" Font-Size="Medium" Font-Bold="True">
                    <Fields>
                        <asp:BoundField DataField="IdFilm"  HeaderText="IdFilm" InsertVisible="False" ReadOnly="True" SortExpression="IdFilm" />
                        <asp:TemplateField HeaderText="Categorie" SortExpression="Categorifield">
                            <EditItemTemplate>
                                <asp:TextBox runat="server" Text='<%# Bind("Categorifield") %>' ID="TextBox1"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="Nom" DataValueField="Id" SelectedValue='<%# Bind("Categorifield") %>' DataSourceID="SqlCat">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlCat" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CategorieDeFilm]"></asp:SqlDataSource>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("Categorifield") %>' ID="Label3"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="Titre" HeaderText="Titre" SortExpression="Titre" />
                        <asp:BoundField DataField="Directeur" HeaderText="Directeur" SortExpression="Directeur" />
                        <asp:TemplateField HeaderText="DateParution" SortExpression="DateParution">
                            <InsertItemTemplate>
                                <asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("DateParution") %>'></asp:Calendar>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("DateParution") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CheckBoxField DataField="EnSalle" HeaderText="EnSalle" SortExpression="EnSalle" />
                        <asp:BoundField DataField="Site" HeaderText="Site" SortExpression="Site" />
                        <asp:TemplateField HeaderText="image" SortExpression="image">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("image") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ButtonType="image" ControlStyle-Width="20px" ControlStyle-Height="20px" ShowInsertButton="True" InsertImageUrl="images/add.png" CancelImageUrl="images/cancel.png" >
<ControlStyle Height="20px" Width="20px"></ControlStyle>
                        </asp:CommandField>
                    </Fields>

<FooterStyle BackColor="#CCCCCC"></FooterStyle>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Films] WHERE [IdFilm] = @IdFilm" InsertCommand="INSERT INTO [Films] ([Categorifield], [Titre], [Directeur], [DateParution], [EnSalle], [Site], [image]) VALUES (@Categorifield, @Titre, @Directeur, @DateParution, @EnSalle, @Site, @image)" SelectCommand="SELECT * FROM [Films] JOIN CategorieDeFilm ON Films.Categorifield=CategorieDeFilm.Id" UpdateCommand="UPDATE [Films] SET [Categorifield] = @Categorifield, [Titre] = @Titre, [Directeur] = @Directeur, [DateParution] = @DateParution, [EnSalle] = @EnSalle, [Site] = @Site, [image] = @image WHERE [IdFilm] = @IdFilm">
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
                        <asp:Parameter Name="Titre" Type="String" />
                        <asp:Parameter Name="Directeur" Type="String" />
                        <asp:Parameter Name="DateParution" Type="DateTime" />
                        <asp:Parameter Name="EnSalle" Type="Boolean" />
                        <asp:Parameter Name="Site" Type="String" />
                        <asp:Parameter Name="image" Type="String" />
                        <asp:Parameter Name="IdFilm" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
                </div>
        <div class="col-md-3">
</div>
    </div>
</asp:Content>
