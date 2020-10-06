<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bolivares.aspx.cs" Inherits="TiendaVirtual.Bolivares" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
    <div class="fila">
            <img src="img/IMG_1959.jpg" class="col10L" />
        </div>    
    <asp:ListView ID="ListView1" runat="server" >
        <ItemTemplate>
            <div id="tiendaitem" >                
                    <asp:Image ID="Image1" ImageUrl='<%# "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("Foto"))  %>' runat="server" data-container="body" data-toggle="popover" data-placement="right" width="196px" Height="196px" />                                        
                    <p class="filaitem columnaitem"><h2 id="titulotienda"><%#Eval("Producto") %></h2></></p>
                    <p class="filaitem columnaitem"><h6 id="cantidadtienda">(<%#Eval("Cantidad") %>) Disponibles</h6></p>
                    <p class="filaitem columnaitem"><h6 id="categoriatienda"><%#Eval("Categoria") %></h6></p>
                    <p class="filaitem columnaitem"><h6 id="impuestotienda"><%#Eval("Impuesto") %></h6></p>
                    <p class="filaitem columnaitem"><h3 id="preciotienda"><%#Eval("Precio","{0:F2}") %> Bs.</h3></p>
                    <p class="filaitem columnaitem"><button class="botonagregar">AGREGAR</button></p>                
            </div>
        </ItemTemplate>
    </asp:ListView>    
    

</asp:Content>
