<%@ Page Title="" Language="C#" MasterPageFile="~/users/MasterUsuario.master" AutoEventWireup="true" CodeFile="publicar.aspx.cs" Inherits="users_publicar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="formulario">
            
            <label for="txtTitulo">Título:</label>
            <input type="text" id="txtTitulo" runat="server" /><br />

            <label for="txtData">Data:</label>
            <input type="text" id="txtData" runat="server" /><br />
            <asp:TextBox ID="TextDatas" runat="server"></asp:TextBox>
        
            <label for="txtConteudo">Conteúdo:</label>
            <textarea id="txtConteudo" runat="server" style="width:100%; height:auto"></textarea>

            <asp:Button Text="Cadastrar" ID="btnCadastrar" runat="server" onclick="btnCadastrar_Click" 
                />
            <span id="lblMensagem" runat="server" />

        </div>


    </span>


</asp:Content>

