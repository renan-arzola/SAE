<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sae._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    hola 1
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Usuarios - Master</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
    <asp:GridView ID="GridView1" class="table table-bordered table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="cod_usu" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/141_tick.png" />
            <asp:BoundField DataField="des_usu" HeaderText="Descripción" SortExpression="des_usu" />
            <asp:BoundField DataField="login_usu" HeaderText="Nombre de Usuario" SortExpression="login_usu" />
            <asp:BoundField DataField="ce_usu" HeaderText="Correo Electrónico" SortExpression="ce_usu" />
            <asp:BoundField DataField="cod_perfil" HeaderText="Perfil" SortExpression="cod_perfil" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sae_dbConnectionString %>" SelectCommand="SELECT [cod_usu], [des_usu], [login_usu], [pass_usu], [ce_usu], [foto_usu], [cod_perfil], [cod_school] FROM [sae1100] ORDER BY [cod_usu]"></asp:SqlDataSource>
    </div>
            <!-- /.box-body -->
         
         </div>

    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Usuarios - Detalle</h3>
                </div>
                <!-- /.box-header -->
        
                <div class="box-body">
                    <asp:FormView ID="FormView1" class="table table-bordered table-striped" runat="server" DataKeyNames="cod_usu" DataSourceID="SqlDataSource2" OnPageIndexChanging="FormView1_PageIndexChanging">
                        <EditItemTemplate>
                            <br />
                            <table style="width:100%;">
                                <tr>
                                    <td><b>Descripción:</b></td>
                                    <td>
                                        <asp:TextBox ID="des_usuTextBox" runat="server" Text='<%# Bind("des_usu") %>' Width="250px" />
                                    </td>
                                    <td><b>Nombre de Usuario:</b></td>
                                    <td>
                                        <asp:TextBox ID="login_usuTextBox" runat="server" Text='<%# Bind("login_usu") %>' Width="200px" />
                                    </td>
                                    <td rowspan="3">
                                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Bind("foto_usu") %>' BorderStyle="Solid" BorderWidth="1px" style="max-width: 100px; max-height: 100px" />
                                        <asp:TextBox ID="foto_usuTextBox" runat="server" Text='<%# Bind("foto_usu") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>Contraseña:</b></td>
                                    <td>
                                        <asp:TextBox ID="pass_usuTextBox" runat="server" Text='<%# Bind("pass_usu") %>' Width="150px" />
                                    </td>
                                    <td><b>Correo Electrónico:</b></td>
                                    <td>
                                        <asp:TextBox ID="ce_usuTextBox" runat="server" Text='<%# Bind("ce_usu") %>' Width="200px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>Perfil:</b></td>
                                    <td>
                                        <asp:TextBox ID="cod_perfilTextBox" runat="server" Text='<%# Bind("cod_perfil") %>' Width="150px" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            des_usu:
                            <asp:TextBox ID="des_usuTextBox" runat="server" Text='<%# Bind("des_usu") %>' />
                            <br />
                            login_usu:
                            <asp:TextBox ID="login_usuTextBox" runat="server" Text='<%# Bind("login_usu") %>' />
                            <br />
                            pass_usu:
                            <asp:TextBox ID="pass_usuTextBox" runat="server" Text='<%# Bind("pass_usu") %>' />
                            <br />
                            ce_usu:
                            <asp:TextBox ID="ce_usuTextBox" runat="server" Text='<%# Bind("ce_usu") %>' />
                            <br />
                            foto_usu:
                            <asp:TextBox ID="foto_usuTextBox" runat="server" Text='<%# Bind("foto_usu") %>' />
                            <br />
                            cod_perfil:
                            <asp:TextBox ID="cod_perfilTextBox" runat="server" Text='<%# Bind("cod_perfil") %>' />
                            <br />
                            cod_school:
                            <asp:TextBox ID="cod_schoolTextBox" runat="server" Text='<%# Bind("cod_school") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <br />
                            <table style="width:100%;">
                                <tr>
                                    <td><b>Descripción:</b></td>
                                    <td>
                                        <asp:Label ID="des_usuLabel" runat="server" Text='<%# Bind("des_usu") %>' Width="250px" />
                                    </td>
                                    <td><b>Nombre de Usuario:</b></td>
                                    <td>
                                        <asp:Label ID="login_usuLabel" runat="server" Text='<%# Bind("login_usu") %>' Width="200px" />
                                    </td>
                                    <td rowspan="3">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("foto_usu") %>' BorderStyle="Solid" BorderWidth="1px" style="max-width: 100px; max-height: 100px" />
                                        <asp:Label ID="foto_usuLabel" runat="server" Text='<%# Bind("foto_usu") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>Contraseña:</b></td>
                                    <td>
                                        <asp:Label ID="pass_usuLabel" runat="server" Text='<%# Bind("pass_usu") %>' Width="150px" />
                                    </td>
                                    <td><b>Correo Electrónico:</b></td>
                                    <td>
                                        <asp:Label ID="ce_usuLabel" runat="server" Text='<%# Bind("ce_usu") %>' Width="200px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>Perfil:</b></td>
                                    <td>
                                        <asp:Label ID="cod_perfilLabel" runat="server" Text='<%# Bind("cod_perfil") %>' Width="150px" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" OnClick="DeleteButton_Click" Text="Eliminar" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
                        </ItemTemplate>
                    </asp:FormView>
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sae_dbConnectionString %>" DeleteCommand="DELETE FROM [sae1100] WHERE [cod_usu] = @cod_usu" InsertCommand="INSERT INTO [sae1100] ([des_usu], [login_usu], [pass_usu], [ce_usu], [foto_usu], [cod_perfil], [cod_school]) VALUES (@des_usu, @login_usu, @pass_usu, @ce_usu, @foto_usu, @cod_perfil, @cod_school)" OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT [cod_usu], [des_usu], [login_usu], [pass_usu], [ce_usu], [foto_usu], [cod_perfil], [cod_school] FROM [sae1100] WHERE ([cod_usu] = @cod_usu) ORDER BY [cod_usu]" UpdateCommand="UPDATE [sae1100] SET [des_usu] = @des_usu, [login_usu] = @login_usu, [pass_usu] = @pass_usu, [ce_usu] = @ce_usu, [foto_usu] = @foto_usu, [cod_perfil] = @cod_perfil, [cod_school] = @cod_school WHERE [cod_usu] = @cod_usu">
                         <DeleteParameters>
                             <asp:Parameter Name="cod_usu" Type="Int64" />
                         </DeleteParameters>
                         <InsertParameters>
                             <asp:Parameter Name="des_usu" Type="String" />
                             <asp:Parameter Name="login_usu" Type="String" />
                             <asp:Parameter Name="pass_usu" Type="String" />
                             <asp:Parameter Name="ce_usu" Type="String" />
                             <asp:Parameter Name="foto_usu" Type="String" />
                             <asp:Parameter Name="cod_perfil" Type="Int64" />
                             <asp:Parameter Name="cod_school" Type="Int64" />
                         </InsertParameters>
                         <SelectParameters>
                             <asp:ControlParameter ControlID="GridView1" Name="cod_usu" PropertyName="SelectedValue" Type="Int64" />
                         </SelectParameters>
                         <UpdateParameters>
                             <asp:Parameter Name="des_usu" Type="String" />
                             <asp:Parameter Name="login_usu" Type="String" />
                             <asp:Parameter Name="pass_usu" Type="String" />
                             <asp:Parameter Name="ce_usu" Type="String" />
                             <asp:Parameter Name="foto_usu" Type="String" />
                             <asp:Parameter Name="cod_perfil" Type="Int64" />
                             <asp:Parameter Name="cod_school" Type="Int64" />
                             <asp:Parameter Name="cod_usu" Type="Int64" />
                         </UpdateParameters>
                    </asp:SqlDataSource>
                     </div>
            <!-- /.box-body -->
    </div>
</asp:Content>
