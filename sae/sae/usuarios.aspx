<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="sae.usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <b>Usuarios</b>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cod_usu" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="cod_usu" HeaderText="cod_usu" ReadOnly="True" SortExpression="cod_usu" />
            <asp:BoundField DataField="des_usu" HeaderText="des_usu" SortExpression="des_usu" />
            <asp:BoundField DataField="login_usu" HeaderText="login_usu" SortExpression="login_usu" />
            <asp:BoundField DataField="pass_usu" HeaderText="pass_usu" SortExpression="pass_usu" />
            <asp:BoundField DataField="ce_usu" HeaderText="ce_usu" SortExpression="ce_usu" />
            <asp:BoundField DataField="foto_usu" HeaderText="foto_usu" SortExpression="foto_usu" />
            <asp:BoundField DataField="cod_perfil" HeaderText="cod_perfil" SortExpression="cod_perfil" />
            <asp:BoundField DataField="cod_school" HeaderText="cod_school" SortExpression="cod_school" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:saeCS %>" SelectCommand="SELECT [cod_usu], [des_usu], [login_usu], [pass_usu], [ce_usu], [foto_usu], [cod_perfil], [cod_school] FROM [sae1100] ORDER BY [cod_usu]"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="cod_usu" DataSourceID="SqlDataSource2">
        <EditItemTemplate>
            cod_usu:
            <asp:Label ID="cod_usuLabel1" runat="server" Text='<%# Eval("cod_usu") %>' />
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
            cod_usu:
            <asp:Label ID="cod_usuLabel" runat="server" Text='<%# Eval("cod_usu") %>' />
            <br />
            des_usu:
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
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:saeCS %>" DeleteCommand="DELETE FROM [sae1100] WHERE [cod_usu] = @cod_usu" InsertCommand="INSERT INTO [sae1100] ([cod_usu], [des_usu], [login_usu], [pass_usu], [ce_usu], [foto_usu], [cod_perfil], [cod_school]) VALUES (@cod_usu, @des_usu, @login_usu, @pass_usu, @ce_usu, @foto_usu, @cod_perfil, @cod_school)" SelectCommand="SELECT [cod_usu], [des_usu], [login_usu], [pass_usu], [ce_usu], [foto_usu], [cod_perfil], [cod_school] FROM [sae1100] WHERE ([cod_usu] = @cod_usu) ORDER BY [cod_usu]" UpdateCommand="UPDATE [sae1100] SET [des_usu] = @des_usu, [login_usu] = @login_usu, [pass_usu] = @pass_usu, [ce_usu] = @ce_usu, [foto_usu] = @foto_usu, [cod_perfil] = @cod_perfil, [cod_school] = @cod_school WHERE [cod_usu] = @cod_usu">
        <DeleteParameters>
            <asp:Parameter Name="cod_usu" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cod_usu" Type="Int64" />
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
</asp:Content>
