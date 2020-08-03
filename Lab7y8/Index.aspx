<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Lab7y8.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:label ID="lblPais" runat="server">Pais</asp:label>
            <asp:label ID="lblHabitantes" runat="server">Habitantes</asp:label>
            <asp:label ID="lblIdioma" runat="server">Idioma</asp:label>
            <asp:label ID="lblPIB" runat="server">PIB</asp:label>
            <asp:label ID="lblSuperficie" runat="server">Superficie</asp:label>
            <asp:label ID="lblRiesgo" runat="server">Riesgo seguridad</asp:label>
             <asp:label ID="lblAlto" runat="server">Alto</asp:label>
             <asp:label ID="lblMedio" runat="server">Medio</asp:label>
             <asp:label ID="lblBajo" runat="server">Bajo</asp:label>
            <asp:DropDownList ID="cmbPais" runat="server" DataSourceID="nomPais" DataTextField="pais" DataValueField="pais"> </asp:DropDownList>
            <asp:SqlDataSource ID="nomPais" runat="server" ConnectionString="<%$ ConnectionStrings:GestionPrestamo %>" SelectCommand="SELECT [pais] FROM [Pais]"></asp:SqlDataSource>
            <asp:DropDownList ID="cmbIdioma" runat="server" DataSourceID="nomIdioma" DataTextField="idioma" DataValueField="idioma"> </asp:DropDownList>
            <asp:SqlDataSource ID="nomIdioma" runat="server" ConnectionString="<%$ ConnectionStrings:GestionPrestamo %>" SelectCommand="SELECT [idioma] FROM [Idioma]"></asp:SqlDataSource>
            <asp:TextBox ID="txtHabitantes" runat="server"> </asp:TextBox>
            <asp:TextBox ID="txtPIB" runat="server"> </asp:TextBox>
            <asp:TextBox ID="txtSuperficie" runat="server"> </asp:TextBox>
            <asp:RadioButton ID="rdAlto" runat="server" />
            <asp:RadioButton ID="rdMedio" runat="server" />
            <asp:RadioButton ID="rdBajo" runat="server" />
            <asp:CheckBox ID="chkbSujPrest" runat="server" />
            <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click"/>
            <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click"/>
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click"/>

            <asp:GridView ID="gridGestionPrestamo" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">

            <Columns>
                <asp:BoundField DataField="pais" HeaderText="pais" SortExpression="pais" />
                <asp:BoundField DataField="Habitantes" HeaderText="Habitantes" SortExpression="Habitantes" />
                <asp:BoundField DataField="idioma" HeaderText="idioma" SortExpression="idioma" />
                <asp:BoundField DataField="PIB" HeaderText="PIB" SortExpression="PIB" />
                <asp:BoundField DataField="Superficie" HeaderText="Superficie" SortExpression="Superficie" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                <asp:CheckBoxField DataField="Prestamo" HeaderText="Prestamo" SortExpression="Prestamo" />
            </Columns>
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionPrestamo %>" SelectCommand="SELECT P.[pais], [Habitantes], I.[idioma],[PIB],[Superficie],R.[Descripcion], [Prestamo]  
from [dbo].[GestionPrestamo] GP INNER JOIN [dbo].[Idioma] I
ON GP.[idIdioma_Idioma] = I.idIdioma
INNER JOIN [dbo].[Pais] P
ON GP.idPais_Pais = P.idPais
INNER JOIN [dbo].[Riesgo] R
ON GP.idRiesgo_Riesgo = R.idRiesgo"></asp:SqlDataSource>

        </div>

    <style>

        #lblPais
        {
            position:absolute; top:10%; left: 10%;
        }

        #lblHabitantes 
        {
            position:absolute; top:20%; left: 10%;
        }

         #lblIdioma 
        {
            position:absolute; top:30%; left: 10%;
        }

          #lblPIB 
        {
            position:absolute; top:40%; left: 10%;
        }

          #lblSuperficie
        {
            position:absolute; top:50%; left: 10%;
        }

          #lblRiesgo
        {
            position:absolute; top:60%; left: 10%;
        }

          #cmbPais 
          {
            position:absolute; top:10%; left: 20%;
        }

           #cmbIdioma 
        {
            position:absolute; top:30%; left: 20%;
        }

           #txtHabitantes 
           {
               position:absolute; top:20%; left: 20%;
        }
            #txtPIB 
        {
            position:absolute; top:40%; left: 20%;
        }
            #txtSuperficie
        {
            position:absolute; top:50%; left: 20%;
        }

            #rdAlto 
            {
                position:absolute; top:65%; left: 20%;
            }
            #rdMedio
            {
                position:absolute; top:65%; left: 30%;
            }

            #rdBajo
            {
                position:absolute; top:65%; left: 40%;
            }

            #chkbSujPrest
            {
                position:absolute; top:60%; left: 20%;

            }

            #btnRegistrar 
            {
                position:absolute; top:70%; left: 10%;
            }

            #btnActualizar 
            {
                position:absolute; top:70%; left: 20%;
            }

            #btnEliminar 
            {
                position:absolute; top:70%; left: 30%;
            }
        #form1 {
            height: 753px;
        }

        #lblAlto
            {
                position:absolute; top:65%; left: 23%;
            }
        #lblMedio
            {
                position:absolute; top:65%; left: 33%;
            }
        
         #lblBajo
            {
                position:absolute; top:65%; left: 43%;
            }
    </style>
        
    </form>

    </body>
</html>
