<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="sae.usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <b>Usuarios</b>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Usuarios - Master</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <asp:GridView ID="GridView1" class="table table-bordered table-striped" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="cod_usu">
             <Columns>
                 <asp:CommandField ButtonType="Image" SelectImageUrl="~/Images/141_tick.png" ShowSelectButton="True" />
                 <asp:BoundField DataField="des_usu" HeaderText="Descripción" SortExpression="des_usu" />
                 <asp:BoundField DataField="login_usu" HeaderText="Nombre de Usuario" SortExpression="login_usu" />
                 <asp:BoundField DataField="ce_usu" HeaderText="Correo Electrónico" SortExpression="ce_usu" />
             </Columns>
        </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:saeCS %>" SelectCommand="SELECT [cod_usu], [des_usu], [login_usu], [pass_usu], [ce_usu], [foto_usu], [cod_perfil] FROM [sae1100] ORDER BY [des_usu]"></asp:SqlDataSource>
         </div>
            <!-- /.box-body -->
         
         </div>

    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Usuarios - Detalle</h3>
                </div>
                <!-- /.box-header -->
        
                <div class="box-body">
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="cod_usu" DataSourceID="SqlDataSource2">
                        <EditItemTemplate>
                            <asp:TextBox ID="foto_usuTextBox" runat="server" Text='<%# Bind("foto_usu") %>' />
                            <br />
                            <table style="width:100%;">
                                <tr>
                                    <td style="width: 115px">des_usu</td>
                                    <td>
                                        <asp:TextBox ID="des_usuTextBox" runat="server" Text='<%# Bind("des_usu") %>' />
                                    </td>
                                    <td>login_usu</td>
                                    <td>
                                        <asp:TextBox ID="login_usuTextBox" runat="server" Text='<%# Bind("login_usu") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 115px">pass_usu</td>
                                    <td>
                                        <asp:TextBox ID="pass_usuTextBox" runat="server" Text='<%# Bind("pass_usu") %>' />
                                    </td>
                                    <td>ce_usu</td>
                                    <td>
                                        <asp:TextBox ID="ce_usuTextBox" runat="server" Text='<%# Bind("ce_usu") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 115px">cod_perfil</td>
                                    <td>
                                        <asp:TextBox ID="cod_perfilTextBox" runat="server" Text='<%# Bind("cod_perfil") %>' />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            <br />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            cod_usu:
                            <asp:TextBox ID="cod_usuTextBox" runat="server" Text='<%# Bind("cod_usu") %>' />
                            <br />
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
                            Descripción:
                            <asp:Label ID="des_usuLabel" runat="server" Text='<%# Bind("des_usu") %>' />
                            <br />
                            login_usu:
                            <asp:Label ID="login_usuLabel" runat="server" Text='<%# Bind("login_usu") %>' />
                            <br />
                            pass_usu:
                            <asp:Label ID="pass_usuLabel" runat="server" Text='<%# Bind("pass_usu") %>' />
                            <br />
                            ce_usu:
                            <asp:Label ID="ce_usuLabel" runat="server" Text='<%# Bind("ce_usu") %>' />
                            <br />
                            foto_usu:
                            <asp:Label ID="foto_usuLabel" runat="server" Text='<%# Bind("foto_usu") %>' />
                            <br />
                            cod_perfil:
                            <asp:Label ID="cod_perfilLabel" runat="server" Text='<%# Bind("cod_perfil") %>' />
                            <br />

                            cod_school:
                            <asp:Label ID="cod_schoolLabel" runat="server" Text='<%# Bind("cod_school") %>' />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                    
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:saeCS %>" SelectCommand="SELECT [cod_usu], [des_usu], [login_usu], [pass_usu], [ce_usu], [foto_usu], [cod_perfil], [cod_school] FROM [sae1100] WHERE ([cod_usu] = @cod_usu)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" DefaultValue="1" Name="cod_usu" PropertyName="SelectedValue" Type="Int64" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    
        </div>
            <!-- /.box-body -->
    </div>
</asp:Content>
