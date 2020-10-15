<%@ Page Title="Home Page" EnableEventValidation="true" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TiendaVirtual.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >        
    <div class="fila">
            <img src="https://avilatechno.com/wp-content/uploads/2020/09/IMG_1959-1536x484.jpg" class="col10L col10M col10S col10T" />
        </div> 
    
    <asp:ListView ID="ListView1" runat="server" >
        <ItemTemplate runat="server">
            <div id="tiendaitem" class="tiendaitem">                
                    <asp:Image ID="Image1" ImageUrl='<%# "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("Foto"))  %>' runat="server" data-container="body" data-toggle="popover" data-placement="right" width="196px" Height="196px" />                                        
                    <div id="cajatitulo"><p class="filaitem columnaitem"><h2><asp:label id="titulotiendaweb" runat="server" CssClass="titulotienda"><%#Eval("Producto") %></asp:label></h2></p></div>
                    <div class="cajafila"><p class="filaitem columnaitem"><h6><asp:label runat="server" class="cantidadtienda">(<%#Eval("Cantidad") %>) Disponibles</asp:label></h6></p></div>
                    <div class="cajafila"><p class="filaitem columnaitem"><h6><asp:label runat="server" class="categoriatienda"><%#Eval("Categoria") %></asp:label></h6></p></div>
                    <div class="cajafila"><p class="filaitem columnaitem"><h6><asp:label runat="server" class="impuestotienda"><%#Eval("Impuesto") %></asp:label></h6></p></div>
                    <div class="cajaprecio"><p class="filaitem columnaitem"><h3><asp:label runat="server" class="preciotienda"><%#Eval("PrecioD","{0:F2}") %> $</asp:label></h3></p></div>
                    <div class="cajaprecio"><p class="filaitem columnaitem"><h5><asp:label runat="server" class="preciotiendados"><%#Eval("Precio","{0:F2}") %> Bs.</asp:label></h5></p></div>
                    <div class="cajaprecio"><p class="filaitem columnaitem"><a class="botonagregar" >AGREGAR</a></p></div>                
            </div>
        </ItemTemplate>
    </asp:ListView>   
    
    
</asp:Content>
